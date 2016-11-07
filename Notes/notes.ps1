#test object to verify if the function had the title value remapped, "test" could be used as the value. Modified POST function to         'title': request.json['test']
<#$json = ConvertTo-Json @{
    title = 'SomethingElse3'
    test = 'something4'
    }
#>


$post = ConvertTo-Json @{
    title = 'SomethingElse7'
    description = "Do this Do That"
    }

#using webrequest instead of restmethod because it outputs response headers...
Invoke-webrequest -Method POST -Uri http://localhost:5000/todo/api/v1.0/tasks -Body $post -ContentType "application/json"

#doesn't work...
$put = ConvertTo-Json @{
    done = 'true'
    }

#works...
$put = @"
{
    "done" : false
}
"@


Invoke-webrequest -Method PUT -Uri http://localhost:5000/todo/api/v1.0/tasks/2 -Body $put -ContentType "application/json"


(Invoke-RestMethod -Method Get -Uri http://localhost:5000/todo/api/v1.0/tasks).tasks
Invoke-WebRequest -Method Get -Uri http://localhost:5000/todo/api/v1.0/tasks