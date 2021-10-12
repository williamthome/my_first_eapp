-record(client, {
  id :: non_neg_integer(),
  name :: nonempty_string(),
  birthdate :: string(),
  address :: string(),
  emails = []
}).
