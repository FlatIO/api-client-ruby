# FlatApi::ClassApi

All URIs are relative to *https://api.flat.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_class**](ClassApi.md#activate_class) | **POST** /classes/{class}/activate | Activate the class
[**add_class_user**](ClassApi.md#add_class_user) | **PUT** /classes/{class}/users/{user} | Add a user to the class
[**archive_class**](ClassApi.md#archive_class) | **POST** /classes/{class}/archive | Archive the class
[**copy_assignment**](ClassApi.md#copy_assignment) | **POST** /classes/{class}/assignments/{assignment}/copy | Copy an assignment
[**create_assignment**](ClassApi.md#create_assignment) | **POST** /classes/{class}/assignments | Assignment creation
[**create_class**](ClassApi.md#create_class) | **POST** /classes | Create a new class
[**create_submission**](ClassApi.md#create_submission) | **PUT** /classes/{class}/assignments/{assignment}/submissions | Create or edit a submission
[**delete_class_user**](ClassApi.md#delete_class_user) | **DELETE** /classes/{class}/users/{user} | Remove a user from the class
[**edit_submission**](ClassApi.md#edit_submission) | **PUT** /classes/{class}/assignments/{assignment}/submissions/{submission} | Edit a submission
[**enroll_class**](ClassApi.md#enroll_class) | **POST** /classes/enroll/{enrollmentCode} | Join a class
[**get_class**](ClassApi.md#get_class) | **GET** /classes/{class} | Get the details of a single class
[**get_score_submissions**](ClassApi.md#get_score_submissions) | **GET** /scores/{score}/submissions | List submissions related to the score
[**get_submission**](ClassApi.md#get_submission) | **GET** /classes/{class}/assignments/{assignment}/submissions/{submission} | Get a student submission
[**get_submissions**](ClassApi.md#get_submissions) | **GET** /classes/{class}/assignments/{assignment}/submissions | List the students&#39; submissions
[**list_assignments**](ClassApi.md#list_assignments) | **GET** /classes/{class}/assignments | Assignments listing
[**list_class_student_submissions**](ClassApi.md#list_class_student_submissions) | **GET** /classes/{class}/students/{user}/submissions | List the submissions for a student
[**list_classes**](ClassApi.md#list_classes) | **GET** /classes | List the classes available for the current user
[**unarchive_class**](ClassApi.md#unarchive_class) | **DELETE** /classes/{class}/archive | Unarchive the class
[**update_class**](ClassApi.md#update_class) | **PUT** /classes/{class} | Update the class


# **activate_class**
> ClassDetails activate_class(_class)

Activate the class

Mark the class as `active`. This is mainly used for classes synchronized from Clever that are initially with an `inactive` state and hidden in the UI. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class


begin
  #Activate the class
  result = api_instance.activate_class(_class)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->activate_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_class_user**
> add_class_user(_class, user)

Add a user to the class

This method can be used by a teacher of the class to enroll another Flat user into the class.  Only users that are part of your Organization can be enrolled in a class of this same Organization.  When enrolling a user in the class, Flat will automatically add this user to the corresponding Class group, based on this role in the Organization. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class

user = "user_example" # String | Unique identifier of the user


begin
  #Add a user to the class
  api_instance.add_class_user(_class, user)
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->add_class_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 
 **user** | **String**| Unique identifier of the user | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **archive_class**
> ClassDetails archive_class(_class)

Archive the class

Mark the class as `archived`. When this course is synchronized with another app, like Google Classroom, this state will be automatically be updated. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class


begin
  #Archive the class
  result = api_instance.archive_class(_class)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->archive_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **copy_assignment**
> Assignment copy_assignment(_class, assignment, body)

Copy an assignment

Copy an assignment to a specified class.  If the original assignment has a due date in the past, this new assingment will be created without a due date.  If the new class is synchronized with an external app (e.g. Google Classroom), the copied assignment will also be posted on the external app. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class

assignment = "assignment_example" # String | Unique identifier of the assignment

body = FlatApi::AssignmentCopy.new # AssignmentCopy | 


begin
  #Copy an assignment
  result = api_instance.copy_assignment(_class, assignment, body)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->copy_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 
 **assignment** | **String**| Unique identifier of the assignment | 
 **body** | [**AssignmentCopy**](AssignmentCopy.md)|  | 

### Return type

[**Assignment**](Assignment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_assignment**
> Assignment create_assignment(_class, opts)

Assignment creation

Use this method as a teacher to create and post a new assignment to a class.  If the class is synchronized with Google Classroom, the assignment will be automatically posted to your Classroom course. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class

opts = { 
  body: FlatApi::AssignmentCreation.new # AssignmentCreation | 
}

begin
  #Assignment creation
  result = api_instance.create_assignment(_class, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->create_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 
 **body** | [**AssignmentCreation**](AssignmentCreation.md)|  | [optional] 

### Return type

[**Assignment**](Assignment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_class**
> ClassDetails create_class(body)

Create a new class

Classrooms on Flat allow you to create activities with assignments and post content to a specific group.  When creating a class, Flat automatically creates two groups: one for the teachers of the course, one for the students. The creator of this class is automatically added to the teachers group.  If the classsroom is synchronized with another application like Google Classroom, some of the meta information will automatically be updated.  You can add users to this class using `POST /classes/{class}/users/{user}`, they will automatically added to the group based on their role on Flat. Users can also enroll themselves to this class using `POST /classes/enroll/{enrollmentCode}` and the `enrollmentCode` returned in the `ClassDetails` response. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

body = FlatApi::ClassCreation.new # ClassCreation | 


begin
  #Create a new class
  result = api_instance.create_class(body)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->create_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ClassCreation**](ClassCreation.md)|  | 

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_submission**
> AssignmentSubmission create_submission(_class, assignment, body)

Create or edit a submission

Use this method as a student to create, update and submit a submission related to an assignment. Students can only set `attachments`, `studentComment` and `submit`.  Teachers can use `PUT /classes/{class}/assignments/{assignment}/submissions/{submission}` to update a submission by id. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class

assignment = "assignment_example" # String | Unique identifier of the assignment

body = FlatApi::AssignmentSubmissionUpdate.new # AssignmentSubmissionUpdate | 


begin
  #Create or edit a submission
  result = api_instance.create_submission(_class, assignment, body)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->create_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 
 **assignment** | **String**| Unique identifier of the assignment | 
 **body** | [**AssignmentSubmissionUpdate**](AssignmentSubmissionUpdate.md)|  | 

### Return type

[**AssignmentSubmission**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_class_user**
> delete_class_user(_class, user)

Remove a user from the class

This method can be used by a teacher to remove a user from the class, or by a student to leave the classroom.  Warning: Removing a user from the class will remove the associated resources, including the submissions and feedback related to these submissions. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class

user = "user_example" # String | Unique identifier of the user


begin
  #Remove a user from the class
  api_instance.delete_class_user(_class, user)
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->delete_class_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 
 **user** | **String**| Unique identifier of the user | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **edit_submission**
> AssignmentSubmission edit_submission(_class, assignment, submission, body)

Edit a submission

Use this method as a teacher to update the different submission and give feedback. Teachers can only set `returnFeedback` 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class

assignment = "assignment_example" # String | Unique identifier of the assignment

submission = "submission_example" # String | Unique identifier of the submission

body = FlatApi::AssignmentSubmissionUpdate.new # AssignmentSubmissionUpdate | 


begin
  #Edit a submission
  result = api_instance.edit_submission(_class, assignment, submission, body)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->edit_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 
 **assignment** | **String**| Unique identifier of the assignment | 
 **submission** | **String**| Unique identifier of the submission | 
 **body** | [**AssignmentSubmissionUpdate**](AssignmentSubmissionUpdate.md)|  | 

### Return type

[**AssignmentSubmission**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **enroll_class**
> ClassDetails enroll_class(enrollment_code)

Join a class

Use this method to join a class using an enrollment code given one of the teacher of this class. This code is also available in the `ClassDetails` returned to the teachers when creating the class or listing / fetching a specific class.  Flat will automatically add the user to the corresponding class group based on this role in the organization. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

enrollment_code = "enrollment_code_example" # String | The enrollment code, available to the teacher in `ClassDetails` 


begin
  #Join a class
  result = api_instance.enroll_class(enrollment_code)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->enroll_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enrollment_code** | **String**| The enrollment code, available to the teacher in &#x60;ClassDetails&#x60;  | 

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_class**
> ClassDetails get_class(_class)

Get the details of a single class

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class


begin
  #Get the details of a single class
  result = api_instance.get_class(_class)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->get_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_score_submissions**
> Array&lt;AssignmentSubmission&gt; get_score_submissions(score, )

List submissions related to the score

This API call will list the different assignments submissions where the score is attached. This method can be used by anyone that are part of the organization and have at least read access to the document. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 


begin
  #List submissions related to the score
  result = api_instance.get_score_submissions(score, )
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->get_score_submissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 

### Return type

[**Array&lt;AssignmentSubmission&gt;**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_submission**
> AssignmentSubmission get_submission(_class, assignment, submission)

Get a student submission

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class

assignment = "assignment_example" # String | Unique identifier of the assignment

submission = "submission_example" # String | Unique identifier of the submission


begin
  #Get a student submission
  result = api_instance.get_submission(_class, assignment, submission)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->get_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 
 **assignment** | **String**| Unique identifier of the assignment | 
 **submission** | **String**| Unique identifier of the submission | 

### Return type

[**AssignmentSubmission**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_submissions**
> Array&lt;AssignmentSubmission&gt; get_submissions(_class, assignment)

List the students' submissions

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class

assignment = "assignment_example" # String | Unique identifier of the assignment


begin
  #List the students' submissions
  result = api_instance.get_submissions(_class, assignment)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->get_submissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 
 **assignment** | **String**| Unique identifier of the assignment | 

### Return type

[**Array&lt;AssignmentSubmission&gt;**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_assignments**
> Array&lt;Assignment&gt; list_assignments(_class)

Assignments listing

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class


begin
  #Assignments listing
  result = api_instance.list_assignments(_class)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->list_assignments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 

### Return type

[**Array&lt;Assignment&gt;**](Assignment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_class_student_submissions**
> Array&lt;AssignmentSubmission&gt; list_class_student_submissions(_class, user)

List the submissions for a student

Use this method as a teacher to list all the assignment submissions sent by a student of the class 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class

user = "user_example" # String | Unique identifier of the user


begin
  #List the submissions for a student
  result = api_instance.list_class_student_submissions(_class, user)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->list_class_student_submissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 
 **user** | **String**| Unique identifier of the user | 

### Return type

[**Array&lt;AssignmentSubmission&gt;**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_classes**
> Array&lt;ClassDetails&gt; list_classes(opts)

List the classes available for the current user

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

opts = { 
  state: "active" # String | Filter the classes by state
}

begin
  #List the classes available for the current user
  result = api_instance.list_classes(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->list_classes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| Filter the classes by state | [optional] [default to active]

### Return type

[**Array&lt;ClassDetails&gt;**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unarchive_class**
> ClassDetails unarchive_class(_class)

Unarchive the class

Mark the class as `active`. When this course is synchronized with another app, like Google Classroom, this state will be automatically be updated. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class


begin
  #Unarchive the class
  result = api_instance.unarchive_class(_class)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->unarchive_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_class**
> ClassDetails update_class(_class, opts)

Update the class

Update the meta information of the class 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new

_class = "_class_example" # String | Unique identifier of the class

opts = { 
  body: FlatApi::ClassUpdate.new # ClassUpdate | Details of the Class
}

begin
  #Update the class
  result = api_instance.update_class(_class, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ClassApi->update_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Unique identifier of the class | 
 **body** | [**ClassUpdate**](ClassUpdate.md)| Details of the Class | [optional] 

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



