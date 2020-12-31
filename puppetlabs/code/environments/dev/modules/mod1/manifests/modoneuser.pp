class mod1::modoneuser ($username,$uid){
  user { "$username" :
    uid => $uid,
    ensure => present
  }
}
