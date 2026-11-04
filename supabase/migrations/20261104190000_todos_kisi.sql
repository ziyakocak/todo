alter table public.todos
  add column kisi text not null default 'Ziya'
  check (kisi in ('Ziya', 'Emir', 'Mehmet'));

alter table public.todos alter column kisi drop default;

create index todos_kisi_idx on public.todos (kisi);
