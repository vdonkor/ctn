pipelineJob('icdc/k9dc') {
  parameters {
  gitParameter branch: '', branchFilter: '.*', defaultValue: 'master', description: 'Choose the tag or branch to deploy', name: 'Tag', quickFilterEnabled: false, selectedValue: 'DEFAULT', sortMode: 'ASCENDING_SMART', tagFilter: '*', type: 'PT_TAG'
  }


  def repo = 'https://github.com/vdonkor/ctn.git' 
  description("ICDC pipeline Job") 

  definition  {
    cpsScm {
      scm {
        git {
          remote { url(repo) }
          branches('master', '**/feature*')
          scriptPath('jobs/icdc/Jenkinsfile')
          extensions { }  // required to avoid tagging
        }
      }
    }
  }
}