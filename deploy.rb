server "53.201.216.144" , :web
#server "ec2-52-201-216-144.compute-1.amazonaws.com"

set :user,"ubuntu"

task :remote, roles: :web do
        run "#{sudo} touch vgscript.sql"
end
~                                                                                                                                              
~                                                                                                                                              
~             
