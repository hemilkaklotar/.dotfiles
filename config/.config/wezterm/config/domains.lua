return {
   -- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
   -- ssh_domains = {},
   ssh_domains = {
      -- yazi's image preview on Windows will only work if launched via ssh from WSL
      {
         name = 'wsl.ssh',
         remote_address = 'localhost',
         multiplexing = 'None',
         default_prog = { 'zsh', '-l' },
         assume_shell = 'Posix'
      }
   },

   -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
   unix_domains = {},

   -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
   wsl_domains = {
      {
         name = 'WSL:Ubuntu',
         distribution = 'Ubuntu',
         username = 'aura_farmer',
         default_cwd = '/home/aura_farmer',
         default_prog = { 'zsh', '-l' },
      },
   },
}
