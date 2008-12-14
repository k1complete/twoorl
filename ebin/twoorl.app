{application, twoorl, [
  {description, "Twoorl is an open-source Twitter clone."},
  {vsn, "0.3"},
  {modules, [twoorl, twoorl_server, twoorl_sup]},
  {registered, [twoorl]},
  {applications, [kernel, stdlib, sasl, crypto, inets, mnesia]},
  {mod, {twoorl, []}},
  {env, []},
  {start_phases, [
    {mysql, [
	{"localhost", "root", "password", "twoorl", 3}
    ]},
    {mnesia, [session]},
    {compile, []}
  ]}
]}.
