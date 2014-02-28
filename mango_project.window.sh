# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/mango_project"

# Create new window. If no argument is given, window name will be based on
# layout file name.

window_root "/home/ramesh/work/mango_new/mangoweb"
new_window "mango_project"
split_h 50
run_cmd "rails c"
#select_pane 0
split_v 50
select_pane 0
split_v 50
run_cmd "gitplo master"
select_pane 0
run_cmd "mongod --dbpath ~/work/db"
split_h 50
run_cmd "cd"
run_cmd "redis-server"



# Split window into panes.
#split_v 20
#split_h 50

# Run commands.
#run_cmd "top"     # runs in active pane
#run_cmd "date" 1  # runs in pane 1

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into active pane

# Set active pane.
#select_pane 0
