create table if not exists users(id bigserial primary key,email text unique not null,username text unique not null,password_hash text not null,created_at timestamptz not null default now());
create table if not exists posts(id bigserial primary key,user_id bigint not null references users(id) on delete cascade,text text not null,created_at timestamptz not null default now());
create table if not exists likes(user_id bigint references users(id) on delete cascade,post_id bigint references posts(id) on delete cascade,created_at timestamptz default now(),primary key(user_id,post_id));
create table if not exists stories(id bigserial primary key,user_id bigint not null references users(id) on delete cascade,media_url text,caption text,created_at timestamptz not null default now(),expires_at timestamptz not null);
create index if not exists stories_active_idx on stories(expires_at);
create table if not exists chats(id bigserial primary key,type text not null check(type in ('private','group','channel')),title text,created_at timestamptz default now());
create table if not exists chat_members(chat_id bigint references chats(id) on delete cascade,user_id bigint references users(id) on delete cascade,role text default 'member',primary key(chat_id,user_id));
create table if not exists messages(id bigserial primary key,chat_id bigint references chats(id) on delete cascade,sender_id bigint references users(id) on delete cascade,text text,created_at timestamptz default now(),edited_at timestamptz);
