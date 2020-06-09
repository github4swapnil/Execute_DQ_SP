pipeline {
   agent any

   stages {
      stage('Git Clone') {
         steps {             
             git credentialsId: '664fef64-e5e3-460c-9f12-183a4369cf35', url: 'https://github.com/github4swapnil/Execute_DQ_SP.git'
         }
      }
      stage('Execute Stored Procedure')
      {
          steps{
              bat label: '', script: '''for %%G in (*.sql) DO (echo Executing: "%%G" >> output.txt
                sqlcmd -H SwapnilN-MSD1 -E -S . -d QACOP -i "%%G"  >> output.txt
                echo ---------------------------------- >>output.txt 
                
                
                
                )'''
                
              
                publishHTML([allowMissing: false, alwaysLinkToLastBuild: true, keepAll: false, reportDir: 'C:\\Users\\swapniln\\.jenkins\\workspace\\ExecuteDQ_SP', reportFiles: 'output.html', reportName: 'HTML Report', reportTitles: ''])              
              
              
              
          }
      }
   }
}
