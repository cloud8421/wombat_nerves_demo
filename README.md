# WombatDemo

To start your Nerves app:

  * Install dependencies with `mix deps.get`
  * Create firmware with `mix firmware`
  * Burn to an SD card with `mix firmware.burn`

The application assumes that the supporting Postgres database has already been migrated.

# IP addresses

- WombatDemo (this app): 192.168.1.101
- Postgresql server: 192.168.1.200
- Wombat: any, as long as it can reach WombatDemo (please refer to `rel/vm.args` for name and cookie).

## Learn more

  * Official docs: https://hexdocs.pm/nerves/getting-started.html
  * Official website: http://www.nerves-project.org/
  * Discussion Slack elixir-lang #nerves ([Invite](https://elixir-slackin.herokuapp.com/))
  * Source: https://github.com/nerves-project/nerves
