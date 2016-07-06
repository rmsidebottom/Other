# Other
My vimrc and some miscellaneous files

Feel free to use any of these. If you have any tips or improvements, 
please inform me!

If any files require information from outside sources, I will not include
those extra files in my GitHub unless there are mine. I will do my best
to point you in the proper direction so that you can easily find the 
necessary files to make your file work.

VIMRC INFORMATION

  GitHub does not allow me to upload hidden files, therefore you will need
  to rename the vimrc to .vimrc in order for it to work. In addition, place
  the file in your home directory (which can be navigated to by entering 
  "cd"). Once both of those steps are complete (and you included any extra
  files needed in their proper directory) restart vim (close and reopen a 
  file) and you will see the changes.
  
  Currently, my vimrc does require an extra set of files. Since I use the 
  luna color scheme, you will need to download those files into the .vim/colors
  directory. This will allow you to use the color scheme and vim won't 
  complain about it.
  
TMUX INFORMATION

  As with most of my vimrc configuration, I discovered all of these configuration
  settings by looking at others' configuration files. Any extra files needed to 
  configure tmux will not be inlcuded in my GitHub unless the material was created 
  by me. Feel free to use the configuration file. Just remember to rename the file
  to .tmux.conf otherwise it will not work.
  
  Also, if tmux does not load you conf file immediately (place it in your home 
  directory, then restart or reload the file) each time you start tmux, you may
  need to edit a configuration file related to your default shell. Bash users might
  need to edit their .bash_profiles. My default shell was zsh so I needed to 
  modify a few files:
  
    `~/.zshrc`
    
      Add following line:
      `plugins=(tmux *whatever plugins you want*)`
      
    `~./.oh-my-zsh/plugins/tmux/tmux.extra.conf`
      Modify source line to:
        `source ~/.tmux.conf`
      
ZSHRC INFORMATION

  Feel free to use my zsrhc configuration. Do know that it is mostly the default 
  configuration as I have not looked into modifying this file. Some modifications
  may require edits in some other files as well.
