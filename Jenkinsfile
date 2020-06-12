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
                          cd /var/lib/jenkins/workspace/SQL_DQ_SP-Prod
                          rm output.txt 
                           echo "${sql_file}" 
                           /opt/mssql-tools/bin/sqlcmd -S qacop.ccz8gy1ujvhp.us-east-2.rds.amazonaws.com,1433 -U swapniln -P swapnilqacop -i "${sql_file}" >> output.txt
                           echo ---------------------------------- >>output.txt 
                           /opt/mssql-tools/bin/sqlcmd -S qacop.ccz8gy1ujvhp.us-east-2.rds.amazonaws.com,1433 -U swapniln -P swapnilqacop -i "${sql_file}" >> output.txt
                           
                       done
                ''' 
             
               
              
              
              
          }
      }
   }
}
