-- Her görev bir kullanıcıya ait; giriş yapan kişi sadece kendi görevlerini görür.
alter table public.todos
  add column user_id uuid references auth.users (id) on delete cascade default auth.uid();

create index todos_user_id_idx on public.todos (user_id);

-- Eski "kisi" sütunu, mevcut görevler kullanıcılara taşınana kadar duruyor.
alter table public.todos alter column kisi drop not null;

-- Girişsiz erişimi tamamen kapat
drop policy "anon okuyabilir" on public.todos;
drop policy "anon ekleyebilir" on public.todos;
drop policy "anon guncelleyebilir" on public.todos;
drop policy "anon silebilir" on public.todos;
revoke all on public.todos from anon;

-- Giriş yapan kullanıcı sadece kendi satırlarına erişir
create policy "kendi gorevlerini okur" on public.todos
  for select to authenticated using ((select auth.uid()) = user_id);
create policy "kendi gorevini ekler" on public.todos
  for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "kendi gorevini gunceller" on public.todos
  for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "kendi gorevini siler" on public.todos
  for delete to authenticated using ((select auth.uid()) = user_id);

grant select, insert, update, delete on public.todos to authenticated;
