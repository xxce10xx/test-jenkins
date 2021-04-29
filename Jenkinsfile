pipeline {
 agent any
 stages {
        stage('Checkout-git'){
               steps{
		git poll: true, url: 'git@github.com:xxce10xx/test-jenkins.git'
               }
        }
        stage('ExecutionScript') {
            steps {
				sh '''
					hola.sh
				'''

            }
        }
        stage('BuildDocker') {
            steps {
            	sh '''
            		docker build -t cjavatest:latest .
                '''
            }
        } 
    stage('PushDockerImage') {
            steps {
            	sh '''
            		docker tag cjavatest:latest cedser/cjavatest:latest
					docker push cedser/cjavatest:latest
					docker rmi cjavatest:latest
                '''
            }
        } 
  }
}

