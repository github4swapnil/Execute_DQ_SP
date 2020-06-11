pipeline {
   agent any

   stages {
      stage('Git Clone') {
         steps {             
              git url: 'https://github.com/github4swapnil/Execute_DQ_SP.git'
         }
      }
      stage('Execute Stored Procedure')
      {
          steps{
              sh label: '', script: 
                '''for sql_file in *.sql 
                        do 
                           echo "${sql_file}" 
                           /opt/mssql-tools/bin/sqlcmd -S qacop.ccz8gy1ujvhp.us-east-2.rds.amazonaws.com,1433 -U swapniln -P swapnilqacop -i "${sql_file}" >> output.txt
                           echo ---------------------------------- >>output.txt 
                       done
                ''' 
             
                publishHTML([allowMissing: false, alwaysLinkToLastBuild: true, keepAll: false, reportDir: 'C:\\Users\\swapniln\\.jenkins\\workspace\\ExecuteDQ_SP', reportFiles: 'output.html', reportName: 'HTML Report', reportTitles: ''])              
              
              
              
          }
      }
   }
}
