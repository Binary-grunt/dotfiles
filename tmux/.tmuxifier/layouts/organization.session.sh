source "$DOTFILES/tmux/scripts/create_win_tmux.sh"

if initialize_session "Organization"; then

  create_and_run_window "Taskwarrior" "task list"
  create_and_run_window "Obsidian" "obsidian"
  create_and_run_window "taskrc" "nvim .taskrc"

  select_window 1 || echo "Failed to select window 1"
fi

finalize_and_go_to_session || echo "Failed to finalize and go to session"
