# takes a server and a process to restart
restart_remote() {
  echo "Restarting $2 on $1..."
  ssh -t $1 "sudo restart $2"
}

# restarts stevie
restart_stevie() {
  restart_remote 'webby-one' 'stevie-bot'
}
