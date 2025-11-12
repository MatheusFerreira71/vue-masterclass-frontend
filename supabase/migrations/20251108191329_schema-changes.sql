drop table if exists projects;

drop type if exists projects_status;

create type projects_status as enum ('in-progress', 'completed');

create table projects (
  id bigint primary key generated always as identity not null,
  name text not null,
  slug text unique not null,
  status projects_status not null default 'in-progress',
  collaborators text array default array[]::varchar[] not null,
  created_at timestamp default now() not null
);