# FlatApi::ClassApi

All URIs are relative to *https://api.flat.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_class**](ClassApi.md#activate_class) | **POST** /classes/{class}/activate | Activate the class |
| [**add_class_user**](ClassApi.md#add_class_user) | **PUT** /classes/{class}/users/{user} | Add a user to the class |
| [**archive_assignment**](ClassApi.md#archive_assignment) | **POST** /classes/{class}/assignments/{assignment}/archive | Archive the assignment |
| [**archive_class**](ClassApi.md#archive_class) | **POST** /classes/{class}/archive | Archive the class |
| [**copy_assignment**](ClassApi.md#copy_assignment) | **POST** /classes/{class}/assignments/{assignment}/copy | Copy an assignment |
| [**create_class**](ClassApi.md#create_class) | **POST** /classes | Create a new class |
| [**create_class_assignment**](ClassApi.md#create_class_assignment) | **POST** /classes/{class}/assignments | Assignment creation |
| [**create_submission**](ClassApi.md#create_submission) | **PUT** /classes/{class}/assignments/{assignment}/submissions | Create or edit a submission |
| [**create_test_student_account**](ClassApi.md#create_test_student_account) | **POST** /classes/{class}/testStudent | Create a test student account |
| [**delete_class_user**](ClassApi.md#delete_class_user) | **DELETE** /classes/{class}/users/{user} | Remove a user from the class |
| [**delete_submission**](ClassApi.md#delete_submission) | **DELETE** /classes/{class}/assignments/{assignment}/submissions/{submission} | Reset a submission |
| [**delete_submission_comment**](ClassApi.md#delete_submission_comment) | **DELETE** /classes/{class}/assignments/{assignment}/submissions/{submission}/comments/{comment} | Delete a feedback comment to a submission |
| [**edit_submission**](ClassApi.md#edit_submission) | **PUT** /classes/{class}/assignments/{assignment}/submissions/{submission} | Edit a submission |
| [**enroll_class**](ClassApi.md#enroll_class) | **POST** /classes/enroll/{enrollmentCode} | Join a class |
| [**export_submissions_reviews_as_csv**](ClassApi.md#export_submissions_reviews_as_csv) | **GET** /classes/{class}/assignments/{assignment}/submissions/csv | CSV Grades exports |
| [**export_submissions_reviews_as_excel**](ClassApi.md#export_submissions_reviews_as_excel) | **GET** /classes/{class}/assignments/{assignment}/submissions/excel | Excel Grades exports |
| [**get_class**](ClassApi.md#get_class) | **GET** /classes/{class} | Get the details of a single class |
| [**get_score_submissions**](ClassApi.md#get_score_submissions) | **GET** /scores/{score}/submissions | List submissions related to the score |
| [**get_submission**](ClassApi.md#get_submission) | **GET** /classes/{class}/assignments/{assignment}/submissions/{submission} | Get a student submission |
| [**get_submission_comments**](ClassApi.md#get_submission_comments) | **GET** /classes/{class}/assignments/{assignment}/submissions/{submission}/comments | List the feedback comments of a submission |
| [**get_submission_history**](ClassApi.md#get_submission_history) | **GET** /classes/{class}/assignments/{assignment}/submissions/{submission}/history | Get the history of the submission |
| [**get_submissions**](ClassApi.md#get_submissions) | **GET** /classes/{class}/assignments/{assignment}/submissions | List the students&#39; submissions |
| [**list_assignments**](ClassApi.md#list_assignments) | **GET** /classes/{class}/assignments | Assignments listing |
| [**list_class_student_submissions**](ClassApi.md#list_class_student_submissions) | **GET** /classes/{class}/students/{user}/submissions | List the submissions for a student |
| [**list_classes**](ClassApi.md#list_classes) | **GET** /classes | List the classes available for the current user |
| [**post_submission_comment**](ClassApi.md#post_submission_comment) | **POST** /classes/{class}/assignments/{assignment}/submissions/{submission}/comments | Add a feedback comment to a submission |
| [**unarchive_assignment**](ClassApi.md#unarchive_assignment) | **DELETE** /classes/{class}/assignments/{assignment}/archive | Unarchive the assignment. |
| [**unarchive_class**](ClassApi.md#unarchive_class) | **DELETE** /classes/{class}/archive | Unarchive the class |
| [**update_class**](ClassApi.md#update_class) | **PUT** /classes/{class} | Update the class |
| [**update_submission_comment**](ClassApi.md#update_submission_comment) | **PUT** /classes/{class}/assignments/{assignment}/submissions/{submission}/comments/{comment} | Update a feedback comment to a submission |


## activate_class

> <ClassDetails> activate_class(_class)

Activate the class

Mark the class as `active`. This is mainly used for classes synchronized from Clever that are initially with an `inactive` state and hidden in the UI. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class

begin
  # Activate the class
  result = api_instance.activate_class(_class)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->activate_class: #{e}"
end
```

#### Using the activate_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassDetails>, Integer, Hash)> activate_class_with_http_info(_class)

```ruby
begin
  # Activate the class
  data, status_code, headers = api_instance.activate_class_with_http_info(_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->activate_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## add_class_user

> add_class_user(_class, user)

Add a user to the class

This method can be used by a teacher of the class to enroll another Flat user into the class.  Only users that are part of your Organization can be enrolled in a class of this same Organization.  When enrolling a user in the class, Flat will automatically add this user to the corresponding Class group, based on this role in the Organization. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
user = 'user_example' # String | Unique identifier of the user

begin
  # Add a user to the class
  api_instance.add_class_user(_class, user)
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->add_class_user: #{e}"
end
```

#### Using the add_class_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_class_user_with_http_info(_class, user)

```ruby
begin
  # Add a user to the class
  data, status_code, headers = api_instance.add_class_user_with_http_info(_class, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->add_class_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **user** | **String** | Unique identifier of the user |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## archive_assignment

> <Assignment> archive_assignment(_class, assignment)

Archive the assignment

Archive the assignment 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment

begin
  # Archive the assignment
  result = api_instance.archive_assignment(_class, assignment)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->archive_assignment: #{e}"
end
```

#### Using the archive_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Assignment>, Integer, Hash)> archive_assignment_with_http_info(_class, assignment)

```ruby
begin
  # Archive the assignment
  data, status_code, headers = api_instance.archive_assignment_with_http_info(_class, assignment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Assignment>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->archive_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |

### Return type

[**Assignment**](Assignment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## archive_class

> <ClassDetails> archive_class(_class)

Archive the class

Mark the class as `archived`. When this course is synchronized with another app, like Google Classroom, this state will be automatically be updated. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class

begin
  # Archive the class
  result = api_instance.archive_class(_class)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->archive_class: #{e}"
end
```

#### Using the archive_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassDetails>, Integer, Hash)> archive_class_with_http_info(_class)

```ruby
begin
  # Archive the class
  data, status_code, headers = api_instance.archive_class_with_http_info(_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->archive_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## copy_assignment

> <AssignmentCopyResponse> copy_assignment(_class, assignment, body)

Copy an assignment

Copy an assignment to a specified class or the resource library  For class assignments: - If the original assignment has a due date in the past, this new assignment will be created without a due date. - If the class is synchronized with an external app (e.g. Google Classroom), the copied assignment will also be posted on the external app. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment
body = FlatApi::AssignmentCopyToClass.new({classroom: 'classroom_example'}) # AssignmentCopy | 

begin
  # Copy an assignment
  result = api_instance.copy_assignment(_class, assignment, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->copy_assignment: #{e}"
end
```

#### Using the copy_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssignmentCopyResponse>, Integer, Hash)> copy_assignment_with_http_info(_class, assignment, body)

```ruby
begin
  # Copy an assignment
  data, status_code, headers = api_instance.copy_assignment_with_http_info(_class, assignment, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssignmentCopyResponse>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->copy_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |
| **body** | [**AssignmentCopy**](AssignmentCopy.md) |  |  |

### Return type

[**AssignmentCopyResponse**](AssignmentCopyResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_class

> <ClassDetails> create_class(body)

Create a new class

Classrooms on Flat allow you to create activities with assignments and post content to a specific group.  When creating a class, Flat automatically creates two groups: one for the teachers of the course, one for the students. The creator of this class is automatically added to the teachers group.  If the classsroom is synchronized with another application like Google Classroom, some of the meta information will automatically be updated.  You can add users to this class using `PUT /classes/{class}/users/{user}`, they will automatically added to the group based on their role on Flat. Users can also enroll themselves to this class using `POST /classes/enroll/{enrollmentCode}` and the `enrollmentCode` returned in the `ClassDetails` response. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
body = FlatApi::ClassCreation.new({name: 'name_example'}) # ClassCreation | 

begin
  # Create a new class
  result = api_instance.create_class(body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->create_class: #{e}"
end
```

#### Using the create_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassDetails>, Integer, Hash)> create_class_with_http_info(body)

```ruby
begin
  # Create a new class
  data, status_code, headers = api_instance.create_class_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->create_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ClassCreation**](ClassCreation.md) |  |  |

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_class_assignment

> <Assignment> create_class_assignment(_class, body)

Assignment creation

Use this method as a teacher to create and post a new assignment to a class.  If the class is synchronized with Google Classroom, the assignment will be automatically posted to your Classroom course. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
body = FlatApi::ClassAssignmentUpdate.new # ClassAssignmentUpdate | 

begin
  # Assignment creation
  result = api_instance.create_class_assignment(_class, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->create_class_assignment: #{e}"
end
```

#### Using the create_class_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Assignment>, Integer, Hash)> create_class_assignment_with_http_info(_class, body)

```ruby
begin
  # Assignment creation
  data, status_code, headers = api_instance.create_class_assignment_with_http_info(_class, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Assignment>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->create_class_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **body** | [**ClassAssignmentUpdate**](ClassAssignmentUpdate.md) |  |  |

### Return type

[**Assignment**](Assignment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_submission

> <AssignmentSubmission> create_submission(_class, assignment, body)

Create or edit a submission

Use this method as a student to create, update and submit a submission related to an assignment. Students can only set `attachments` and `submit`. Teachers can use `PUT /classes/{class}/assignments/{assignment}/submissions/{submission}` to update a submission by id. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment
body = FlatApi::AssignmentSubmissionUpdate.new # AssignmentSubmissionUpdate | 

begin
  # Create or edit a submission
  result = api_instance.create_submission(_class, assignment, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->create_submission: #{e}"
end
```

#### Using the create_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssignmentSubmission>, Integer, Hash)> create_submission_with_http_info(_class, assignment, body)

```ruby
begin
  # Create or edit a submission
  data, status_code, headers = api_instance.create_submission_with_http_info(_class, assignment, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssignmentSubmission>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->create_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |
| **body** | [**AssignmentSubmissionUpdate**](AssignmentSubmissionUpdate.md) |  |  |

### Return type

[**AssignmentSubmission**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_test_student_account

> <UserDetails> create_test_student_account(_class, opts)

Create a test student account

Test students account can be created by teachers an admin and be used to experiment the assignments.  - They are automatically added to the class. - They can be reset using this API endpoint (a new account will be created and the previous one scheduled for deletion). - These accounts don't use a user license. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
opts = {
  reset: true # Boolean | If true, the testing account will be re-created. 
}

begin
  # Create a test student account
  result = api_instance.create_test_student_account(_class, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->create_test_student_account: #{e}"
end
```

#### Using the create_test_student_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserDetails>, Integer, Hash)> create_test_student_account_with_http_info(_class, opts)

```ruby
begin
  # Create a test student account
  data, status_code, headers = api_instance.create_test_student_account_with_http_info(_class, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->create_test_student_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **reset** | **Boolean** | If true, the testing account will be re-created.  | [optional] |

### Return type

[**UserDetails**](UserDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_class_user

> delete_class_user(_class, user)

Remove a user from the class

This method can be used by a teacher to remove a user from the class, or by a student to leave the classroom.  Warning: Removing a user from the class will remove the associated resources, including the submissions and feedback related to these submissions. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
user = 'user_example' # String | Unique identifier of the user

begin
  # Remove a user from the class
  api_instance.delete_class_user(_class, user)
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->delete_class_user: #{e}"
end
```

#### Using the delete_class_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_class_user_with_http_info(_class, user)

```ruby
begin
  # Remove a user from the class
  data, status_code, headers = api_instance.delete_class_user_with_http_info(_class, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->delete_class_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **user** | **String** | Unique identifier of the user |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_submission

> <AssignmentSubmission> delete_submission(_class, assignment, submission)

Reset a submission

Use this method as a teacher to reset a submission and allow student to start over the assignment 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment
submission = 'submission_example' # String | Unique identifier of the submission

begin
  # Reset a submission
  result = api_instance.delete_submission(_class, assignment, submission)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->delete_submission: #{e}"
end
```

#### Using the delete_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssignmentSubmission>, Integer, Hash)> delete_submission_with_http_info(_class, assignment, submission)

```ruby
begin
  # Reset a submission
  data, status_code, headers = api_instance.delete_submission_with_http_info(_class, assignment, submission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssignmentSubmission>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->delete_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |
| **submission** | **String** | Unique identifier of the submission |  |

### Return type

[**AssignmentSubmission**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_submission_comment

> delete_submission_comment(_class, assignment, submission, comment)

Delete a feedback comment to a submission

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment
submission = 'submission_example' # String | Unique identifier of the submission
comment = 'comment_example' # String | Unique identifier of the comment

begin
  # Delete a feedback comment to a submission
  api_instance.delete_submission_comment(_class, assignment, submission, comment)
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->delete_submission_comment: #{e}"
end
```

#### Using the delete_submission_comment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_submission_comment_with_http_info(_class, assignment, submission, comment)

```ruby
begin
  # Delete a feedback comment to a submission
  data, status_code, headers = api_instance.delete_submission_comment_with_http_info(_class, assignment, submission, comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->delete_submission_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |
| **submission** | **String** | Unique identifier of the submission |  |
| **comment** | **String** | Unique identifier of the comment |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## edit_submission

> <AssignmentSubmission> edit_submission(_class, assignment, submission, body)

Edit a submission

Use this method as a teacher to update the different submission and give feedback. Teachers can only set `return`, `draftGrade` and `grade` 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment
submission = 'submission_example' # String | Unique identifier of the submission
body = FlatApi::AssignmentSubmissionUpdate.new # AssignmentSubmissionUpdate | 

begin
  # Edit a submission
  result = api_instance.edit_submission(_class, assignment, submission, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->edit_submission: #{e}"
end
```

#### Using the edit_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssignmentSubmission>, Integer, Hash)> edit_submission_with_http_info(_class, assignment, submission, body)

```ruby
begin
  # Edit a submission
  data, status_code, headers = api_instance.edit_submission_with_http_info(_class, assignment, submission, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssignmentSubmission>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->edit_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |
| **submission** | **String** | Unique identifier of the submission |  |
| **body** | [**AssignmentSubmissionUpdate**](AssignmentSubmissionUpdate.md) |  |  |

### Return type

[**AssignmentSubmission**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## enroll_class

> <ClassDetails> enroll_class(enrollment_code)

Join a class

Use this method to join a class using an enrollment code given one of the teacher of this class. This code is also available in the `ClassDetails` returned to the teachers when creating the class or listing / fetching a specific class.  Flat will automatically add the user to the corresponding class group based on this role in the organization. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
enrollment_code = 'enrollment_code_example' # String | The enrollment code, available to the teacher in `ClassDetails` 

begin
  # Join a class
  result = api_instance.enroll_class(enrollment_code)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->enroll_class: #{e}"
end
```

#### Using the enroll_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassDetails>, Integer, Hash)> enroll_class_with_http_info(enrollment_code)

```ruby
begin
  # Join a class
  data, status_code, headers = api_instance.enroll_class_with_http_info(enrollment_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->enroll_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enrollment_code** | **String** | The enrollment code, available to the teacher in &#x60;ClassDetails&#x60;  |  |

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_submissions_reviews_as_csv

> File export_submissions_reviews_as_csv(_class, assignment)

CSV Grades exports

Export list of submissions grades to a CSV file

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment

begin
  # CSV Grades exports
  result = api_instance.export_submissions_reviews_as_csv(_class, assignment)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->export_submissions_reviews_as_csv: #{e}"
end
```

#### Using the export_submissions_reviews_as_csv_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> export_submissions_reviews_as_csv_with_http_info(_class, assignment)

```ruby
begin
  # CSV Grades exports
  data, status_code, headers = api_instance.export_submissions_reviews_as_csv_with_http_info(_class, assignment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->export_submissions_reviews_as_csv_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |

### Return type

**File**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv


## export_submissions_reviews_as_excel

> File export_submissions_reviews_as_excel(_class, assignment)

Excel Grades exports

Export list of submissions grades to an Excel file

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment

begin
  # Excel Grades exports
  result = api_instance.export_submissions_reviews_as_excel(_class, assignment)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->export_submissions_reviews_as_excel: #{e}"
end
```

#### Using the export_submissions_reviews_as_excel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> export_submissions_reviews_as_excel_with_http_info(_class, assignment)

```ruby
begin
  # Excel Grades exports
  data, status_code, headers = api_instance.export_submissions_reviews_as_excel_with_http_info(_class, assignment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->export_submissions_reviews_as_excel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |

### Return type

**File**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


## get_class

> <ClassDetails> get_class(_class)

Get the details of a single class

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class

begin
  # Get the details of a single class
  result = api_instance.get_class(_class)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_class: #{e}"
end
```

#### Using the get_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassDetails>, Integer, Hash)> get_class_with_http_info(_class)

```ruby
begin
  # Get the details of a single class
  data, status_code, headers = api_instance.get_class_with_http_info(_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_score_submissions

> <Array<AssignmentSubmission>> get_score_submissions(score)

List submissions related to the score

This API call will list the different assignments submissions where the score is attached. This method can be used by anyone that are part of the organization and have at least read access to the document. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

begin
  # List submissions related to the score
  result = api_instance.get_score_submissions(score)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_score_submissions: #{e}"
end
```

#### Using the get_score_submissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssignmentSubmission>>, Integer, Hash)> get_score_submissions_with_http_info(score)

```ruby
begin
  # List submissions related to the score
  data, status_code, headers = api_instance.get_score_submissions_with_http_info(score)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssignmentSubmission>>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_score_submissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |

### Return type

[**Array&lt;AssignmentSubmission&gt;**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_submission

> <AssignmentSubmission> get_submission(_class, assignment, submission)

Get a student submission

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment
submission = 'submission_example' # String | Unique identifier of the submission

begin
  # Get a student submission
  result = api_instance.get_submission(_class, assignment, submission)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_submission: #{e}"
end
```

#### Using the get_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssignmentSubmission>, Integer, Hash)> get_submission_with_http_info(_class, assignment, submission)

```ruby
begin
  # Get a student submission
  data, status_code, headers = api_instance.get_submission_with_http_info(_class, assignment, submission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssignmentSubmission>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |
| **submission** | **String** | Unique identifier of the submission |  |

### Return type

[**AssignmentSubmission**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_submission_comments

> <Array<AssignmentSubmissionComment>> get_submission_comments(_class, assignment, submission)

List the feedback comments of a submission

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment
submission = 'submission_example' # String | Unique identifier of the submission

begin
  # List the feedback comments of a submission
  result = api_instance.get_submission_comments(_class, assignment, submission)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_submission_comments: #{e}"
end
```

#### Using the get_submission_comments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssignmentSubmissionComment>>, Integer, Hash)> get_submission_comments_with_http_info(_class, assignment, submission)

```ruby
begin
  # List the feedback comments of a submission
  data, status_code, headers = api_instance.get_submission_comments_with_http_info(_class, assignment, submission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssignmentSubmissionComment>>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_submission_comments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |
| **submission** | **String** | Unique identifier of the submission |  |

### Return type

[**Array&lt;AssignmentSubmissionComment&gt;**](AssignmentSubmissionComment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_submission_history

> <Array<AssignmentSubmissionHistory>> get_submission_history(_class, assignment, submission)

Get the history of the submission

For teachers only. Returns a detailed history of the submission. This currently includes state and grade histories. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment
submission = 'submission_example' # String | Unique identifier of the submission

begin
  # Get the history of the submission
  result = api_instance.get_submission_history(_class, assignment, submission)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_submission_history: #{e}"
end
```

#### Using the get_submission_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssignmentSubmissionHistory>>, Integer, Hash)> get_submission_history_with_http_info(_class, assignment, submission)

```ruby
begin
  # Get the history of the submission
  data, status_code, headers = api_instance.get_submission_history_with_http_info(_class, assignment, submission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssignmentSubmissionHistory>>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_submission_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |
| **submission** | **String** | Unique identifier of the submission |  |

### Return type

[**Array&lt;AssignmentSubmissionHistory&gt;**](AssignmentSubmissionHistory.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_submissions

> <Array<AssignmentSubmission>> get_submissions(_class, assignment)

List the students' submissions

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment

begin
  # List the students' submissions
  result = api_instance.get_submissions(_class, assignment)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_submissions: #{e}"
end
```

#### Using the get_submissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssignmentSubmission>>, Integer, Hash)> get_submissions_with_http_info(_class, assignment)

```ruby
begin
  # List the students' submissions
  data, status_code, headers = api_instance.get_submissions_with_http_info(_class, assignment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssignmentSubmission>>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->get_submissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |

### Return type

[**Array&lt;AssignmentSubmission&gt;**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_assignments

> <Array<ClassAssignment>> list_assignments(_class)

Assignments listing

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class

begin
  # Assignments listing
  result = api_instance.list_assignments(_class)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->list_assignments: #{e}"
end
```

#### Using the list_assignments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ClassAssignment>>, Integer, Hash)> list_assignments_with_http_info(_class)

```ruby
begin
  # Assignments listing
  data, status_code, headers = api_instance.list_assignments_with_http_info(_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ClassAssignment>>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->list_assignments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |

### Return type

[**Array&lt;ClassAssignment&gt;**](ClassAssignment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_class_student_submissions

> <Array<AssignmentSubmission>> list_class_student_submissions(_class, user)

List the submissions for a student

Use this method as a teacher to list all the assignment submissions sent by a student of the class 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
user = 'user_example' # String | Unique identifier of the user

begin
  # List the submissions for a student
  result = api_instance.list_class_student_submissions(_class, user)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->list_class_student_submissions: #{e}"
end
```

#### Using the list_class_student_submissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssignmentSubmission>>, Integer, Hash)> list_class_student_submissions_with_http_info(_class, user)

```ruby
begin
  # List the submissions for a student
  data, status_code, headers = api_instance.list_class_student_submissions_with_http_info(_class, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssignmentSubmission>>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->list_class_student_submissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **user** | **String** | Unique identifier of the user |  |

### Return type

[**Array&lt;AssignmentSubmission&gt;**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_classes

> <Array<ClassDetails>> list_classes(opts)

List the classes available for the current user

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
opts = {
  state: 'active' # String | Filter the classes by state
}

begin
  # List the classes available for the current user
  result = api_instance.list_classes(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->list_classes: #{e}"
end
```

#### Using the list_classes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ClassDetails>>, Integer, Hash)> list_classes_with_http_info(opts)

```ruby
begin
  # List the classes available for the current user
  data, status_code, headers = api_instance.list_classes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ClassDetails>>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->list_classes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | Filter the classes by state | [optional][default to &#39;active&#39;] |

### Return type

[**Array&lt;ClassDetails&gt;**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_submission_comment

> <AssignmentSubmissionComment> post_submission_comment(_class, assignment, submission, assignment_submission_comment_creation)

Add a feedback comment to a submission

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment
submission = 'submission_example' # String | Unique identifier of the submission
assignment_submission_comment_creation = FlatApi::AssignmentSubmissionCommentCreation.new({comment: 'comment_example'}) # AssignmentSubmissionCommentCreation | 

begin
  # Add a feedback comment to a submission
  result = api_instance.post_submission_comment(_class, assignment, submission, assignment_submission_comment_creation)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->post_submission_comment: #{e}"
end
```

#### Using the post_submission_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssignmentSubmissionComment>, Integer, Hash)> post_submission_comment_with_http_info(_class, assignment, submission, assignment_submission_comment_creation)

```ruby
begin
  # Add a feedback comment to a submission
  data, status_code, headers = api_instance.post_submission_comment_with_http_info(_class, assignment, submission, assignment_submission_comment_creation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssignmentSubmissionComment>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->post_submission_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |
| **submission** | **String** | Unique identifier of the submission |  |
| **assignment_submission_comment_creation** | [**AssignmentSubmissionCommentCreation**](AssignmentSubmissionCommentCreation.md) |  |  |

### Return type

[**AssignmentSubmissionComment**](AssignmentSubmissionComment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unarchive_assignment

> <Assignment> unarchive_assignment(_class, assignment)

Unarchive the assignment.

Mark the assignment as `active`. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment

begin
  # Unarchive the assignment.
  result = api_instance.unarchive_assignment(_class, assignment)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->unarchive_assignment: #{e}"
end
```

#### Using the unarchive_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Assignment>, Integer, Hash)> unarchive_assignment_with_http_info(_class, assignment)

```ruby
begin
  # Unarchive the assignment.
  data, status_code, headers = api_instance.unarchive_assignment_with_http_info(_class, assignment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Assignment>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->unarchive_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |

### Return type

[**Assignment**](Assignment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unarchive_class

> <ClassDetails> unarchive_class(_class)

Unarchive the class

Mark the class as `active`. When this course is synchronized with another app, like Google Classroom, this state will be automatically be updated. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class

begin
  # Unarchive the class
  result = api_instance.unarchive_class(_class)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->unarchive_class: #{e}"
end
```

#### Using the unarchive_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassDetails>, Integer, Hash)> unarchive_class_with_http_info(_class)

```ruby
begin
  # Unarchive the class
  data, status_code, headers = api_instance.unarchive_class_with_http_info(_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->unarchive_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_class

> <ClassDetails> update_class(_class, body)

Update the class

Update the meta information of the class 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
body = FlatApi::ClassUpdate.new # ClassUpdate | Details of the Class

begin
  # Update the class
  result = api_instance.update_class(_class, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->update_class: #{e}"
end
```

#### Using the update_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassDetails>, Integer, Hash)> update_class_with_http_info(_class, body)

```ruby
begin
  # Update the class
  data, status_code, headers = api_instance.update_class_with_http_info(_class, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->update_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **body** | [**ClassUpdate**](ClassUpdate.md) | Details of the Class |  |

### Return type

[**ClassDetails**](ClassDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_submission_comment

> <AssignmentSubmissionComment> update_submission_comment(_class, assignment, submission, comment, assignment_submission_comment_creation)

Update a feedback comment to a submission

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ClassApi.new
_class = '_class_example' # String | Unique identifier of the class
assignment = 'assignment_example' # String | Unique identifier of the assignment
submission = 'submission_example' # String | Unique identifier of the submission
comment = 'comment_example' # String | Unique identifier of the comment
assignment_submission_comment_creation = FlatApi::AssignmentSubmissionCommentCreation.new({comment: 'comment_example'}) # AssignmentSubmissionCommentCreation | 

begin
  # Update a feedback comment to a submission
  result = api_instance.update_submission_comment(_class, assignment, submission, comment, assignment_submission_comment_creation)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->update_submission_comment: #{e}"
end
```

#### Using the update_submission_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssignmentSubmissionComment>, Integer, Hash)> update_submission_comment_with_http_info(_class, assignment, submission, comment, assignment_submission_comment_creation)

```ruby
begin
  # Update a feedback comment to a submission
  data, status_code, headers = api_instance.update_submission_comment_with_http_info(_class, assignment, submission, comment, assignment_submission_comment_creation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssignmentSubmissionComment>
rescue FlatApi::ApiError => e
  puts "Error when calling ClassApi->update_submission_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Unique identifier of the class |  |
| **assignment** | **String** | Unique identifier of the assignment |  |
| **submission** | **String** | Unique identifier of the submission |  |
| **comment** | **String** | Unique identifier of the comment |  |
| **assignment_submission_comment_creation** | [**AssignmentSubmissionCommentCreation**](AssignmentSubmissionCommentCreation.md) |  |  |

### Return type

[**AssignmentSubmissionComment**](AssignmentSubmissionComment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

