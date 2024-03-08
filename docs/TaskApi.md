# FlatApi::TaskApi

All URIs are relative to *https://api.flat.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_task**](TaskApi.md#get_task) | **GET** /tasks/{task} | Get a task details |


## get_task

> <Task> get_task(task)

Get a task details

This method can be used to follow a task progression, for example while a score is being exported. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::TaskApi.new
task = 'task_example' # String | Unique identifier for the task

begin
  # Get a task details
  result = api_instance.get_task(task)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling TaskApi->get_task: #{e}"
end
```

#### Using the get_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> get_task_with_http_info(task)

```ruby
begin
  # Get a task details
  data, status_code, headers = api_instance.get_task_with_http_info(task)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue FlatApi::ApiError => e
  puts "Error when calling TaskApi->get_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task** | **String** | Unique identifier for the task |  |

### Return type

[**Task**](Task.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

