create table public.todos (
  id bigint generated always as identity primary key,
  metin text not null check (char_length(metin) between 1 and 500),
  bitti boolean not null default false,
  created_at timestamptz not null default now()
);

alter table public.todos enable row level security;

-- Girişsiz kullanım: anon anahtarıyla okuma/yazma serbest.
create policy "anon okuyabilir" on public.todos for select to anon using (true);
create policy "anon ekleyebilir" on public.todos for insert to anon with check (true);
create policy "anon guncelleyebilir" on public.todos for update to anon using (true) with check (true);
create policy "anon silebilir" on public.todos for delete to anon using (true);

grant select, insert, update, delete on public.todos to anon;
