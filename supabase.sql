-- MIS GASTOS: configuración de Supabase
-- 1) En Supabase abre SQL Editor > New query.
-- 2) Pega TODO este archivo y pulsa Run.

create table if not exists public.expenses (
  id uuid primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  date date not null,
  merchant text,
  amount numeric(12,2) not null,
  concept text,
  type text,
  photo_path text,
  updated_at timestamptz default now()
);

alter table public.expenses enable row level security;

drop policy if exists "users can read own expenses" on public.expenses;
drop policy if exists "users can insert own expenses" on public.expenses;
drop policy if exists "users can update own expenses" on public.expenses;
drop policy if exists "users can delete own expenses" on public.expenses;

create policy "users can read own expenses" on public.expenses for select using (auth.uid() = user_id);
create policy "users can insert own expenses" on public.expenses for insert with check (auth.uid() = user_id);
create policy "users can update own expenses" on public.expenses for update using (auth.uid() = user_id);
create policy "users can delete own expenses" on public.expenses for delete using (auth.uid() = user_id);

-- Storage bucket para las fotos de los tickets.
insert into storage.buckets (id, name, public) values ('receipts','receipts',false)
on conflict (id) do nothing;

create policy "users can upload own receipts" on storage.objects for insert to authenticated
with check (bucket_id='receipts' and (storage.foldername(name))[1] = auth.uid()::text);

create policy "users can read own receipts" on storage.objects for select to authenticated
using (bucket_id='receipts' and (storage.foldername(name))[1] = auth.uid()::text);

create policy "users can update own receipts" on storage.objects for update to authenticated
using (bucket_id='receipts' and (storage.foldername(name))[1] = auth.uid()::text);

create policy "users can delete own receipts" on storage.objects for delete to authenticated
using (bucket_id='receipts' and (storage.foldername(name))[1] = auth.uid()::text);
