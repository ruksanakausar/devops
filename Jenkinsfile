node{
  def remote = [:]
  remote.name = 'oraclevm'
  remote.host = '152.67.160.182'
  remote.user = 'opc'
  remote.password = 'Muzammil073#'
  remote.allowAnyHosts = true
  stage( 'checkout') {
    checkout scm
  }
  stage('Remote local') {
   // writeFile file: 'abc.sh', text: 'ls -lrt'
   // sshScript remote: remote, script: "abc.sh"
    sshCommand remote : remote, command: "pwd"
      sshCommand remote : remote, command: "cd /home"
    sshCommand remote : remote, command: "pwd"
      sshCommand remote : remote, command: "ls -lrt"
  }
  stage( 'Remote SSH 2') {
    sshScript remote: remote, script: "./micro.sh"
  }
   stage('Remote SSH 3') {
  sshScript remote: remote, script "./micro.sh" 
}
   }
