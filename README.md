# Ruby Client for the Flat REST API

[![Build Status](https://travis-ci.org/FlatIO/api-client-ruby.svg?branch=master)](https://travis-ci.org/FlatIO/api-client-ruby)
[![Rubygems](https://img.shields.io/gem/v/flat_api.svg)](https://rubygems.org/gems/flat_api)

The Flat API allows you to easily extend the abilities of the [Flat Platform](https://flat.io), with a wide range of use cases including the following:
- Creating and importing new music scores using MusicXML or MIDI files
- Browsing, updating, copying, exporting the user's scores (for example in MP3, WAV or MIDI)
- Managing educational resources with Flat for Education: creating & updating the organization accounts, the classes, rosters and assignments.

You can find the API reference including code samples and our OpenAPI Specification at the following url: [https://flat.io/developers/api/reference](https://flat.io/developers/api/reference).

To request some API credentials, please visit [https://flat.io/developers](https://flat.io/developers).

This Python package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project.

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build flat_api.gemspec
```

Then either install the gem locally:

```shell
gem install ./flat_api-0.1.0.gem
```
(for development, run `gem install --dev ./flat_api-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'flat_api', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/FlatIO/api-client-ruby, then add the following in the Gemfile:

    gem 'flat_api', :git => 'https://github.com/FlatIO/api-client-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'flat_api'

# Setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::AccountApi.new

begin
  #Get current user profile
  result = api_instance.get_authenticated_user
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling AccountApi->get_authenticated_user: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.flat.io/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*FlatApi::AccountApi* | [**get_authenticated_user**](docs/AccountApi.md#get_authenticated_user) | **GET** /me | Get current user profile
*FlatApi::ClassApi* | [**activate_class**](docs/ClassApi.md#activate_class) | **POST** /classes/{class}/activate | Activate the class
*FlatApi::ClassApi* | [**add_class_user**](docs/ClassApi.md#add_class_user) | **PUT** /classes/{class}/users/{user} | Add a user to the class
*FlatApi::ClassApi* | [**archive_class**](docs/ClassApi.md#archive_class) | **POST** /classes/{class}/archive | Archive the class
*FlatApi::ClassApi* | [**copy_assignment**](docs/ClassApi.md#copy_assignment) | **POST** /classes/{class}/assignments/{assignment}/copy | Copy an assignment
*FlatApi::ClassApi* | [**create_assignment**](docs/ClassApi.md#create_assignment) | **POST** /classes/{class}/assignments | Assignment creation
*FlatApi::ClassApi* | [**create_class**](docs/ClassApi.md#create_class) | **POST** /classes | Create a new class
*FlatApi::ClassApi* | [**create_submission**](docs/ClassApi.md#create_submission) | **PUT** /classes/{class}/assignments/{assignment}/submissions | Create or edit a submission
*FlatApi::ClassApi* | [**delete_class_user**](docs/ClassApi.md#delete_class_user) | **DELETE** /classes/{class}/users/{user} | Remove a user from the class
*FlatApi::ClassApi* | [**edit_submission**](docs/ClassApi.md#edit_submission) | **PUT** /classes/{class}/assignments/{assignment}/submissions/{submission} | Edit a submission
*FlatApi::ClassApi* | [**enroll_class**](docs/ClassApi.md#enroll_class) | **POST** /classes/enroll/{enrollmentCode} | Join a class
*FlatApi::ClassApi* | [**get_class**](docs/ClassApi.md#get_class) | **GET** /classes/{class} | Get the details of a single class
*FlatApi::ClassApi* | [**get_score_submissions**](docs/ClassApi.md#get_score_submissions) | **GET** /scores/{score}/submissions | List submissions related to the score
*FlatApi::ClassApi* | [**get_submission**](docs/ClassApi.md#get_submission) | **GET** /classes/{class}/assignments/{assignment}/submissions/{submission} | Get a student submission
*FlatApi::ClassApi* | [**get_submissions**](docs/ClassApi.md#get_submissions) | **GET** /classes/{class}/assignments/{assignment}/submissions | List the students' submissions
*FlatApi::ClassApi* | [**list_assignments**](docs/ClassApi.md#list_assignments) | **GET** /classes/{class}/assignments | Assignments listing
*FlatApi::ClassApi* | [**list_class_student_submissions**](docs/ClassApi.md#list_class_student_submissions) | **GET** /classes/{class}/students/{user}/submissions | List the submissions for a student
*FlatApi::ClassApi* | [**list_classes**](docs/ClassApi.md#list_classes) | **GET** /classes | List the classes available for the current user
*FlatApi::ClassApi* | [**unarchive_class**](docs/ClassApi.md#unarchive_class) | **DELETE** /classes/{class}/archive | Unarchive the class
*FlatApi::ClassApi* | [**update_class**](docs/ClassApi.md#update_class) | **PUT** /classes/{class} | Update the class
*FlatApi::GroupApi* | [**get_group_details**](docs/GroupApi.md#get_group_details) | **GET** /groups/{group} | Get group information
*FlatApi::GroupApi* | [**get_group_scores**](docs/GroupApi.md#get_group_scores) | **GET** /groups/{group}/scores | List group's scores
*FlatApi::GroupApi* | [**list_group_users**](docs/GroupApi.md#list_group_users) | **GET** /groups/{group}/users | List group's users
*FlatApi::OrganizationApi* | [**create_lti_credentials**](docs/OrganizationApi.md#create_lti_credentials) | **POST** /organizations/lti/credentials | Create a new couple of LTI 1.x credentials
*FlatApi::OrganizationApi* | [**create_organization_invitation**](docs/OrganizationApi.md#create_organization_invitation) | **POST** /organizations/invitations | Create a new invitation to join the organization
*FlatApi::OrganizationApi* | [**create_organization_user**](docs/OrganizationApi.md#create_organization_user) | **POST** /organizations/users | Create a new user account
*FlatApi::OrganizationApi* | [**list_lti_credentials**](docs/OrganizationApi.md#list_lti_credentials) | **GET** /organizations/lti/credentials | List LTI 1.x credentials
*FlatApi::OrganizationApi* | [**list_organization_invitations**](docs/OrganizationApi.md#list_organization_invitations) | **GET** /organizations/invitations | List the organization invitations
*FlatApi::OrganizationApi* | [**list_organization_users**](docs/OrganizationApi.md#list_organization_users) | **GET** /organizations/users | List the organization users
*FlatApi::OrganizationApi* | [**remove_organization_invitation**](docs/OrganizationApi.md#remove_organization_invitation) | **DELETE** /organizations/invitations/{invitation} | Remove an organization invitation
*FlatApi::OrganizationApi* | [**remove_organization_user**](docs/OrganizationApi.md#remove_organization_user) | **DELETE** /organizations/users/{user} | Remove an account from Flat
*FlatApi::OrganizationApi* | [**revoke_lti_credentials**](docs/OrganizationApi.md#revoke_lti_credentials) | **DELETE** /organizations/lti/credentials/{credentials} | Revoke LTI 1.x credentials
*FlatApi::OrganizationApi* | [**update_organization_user**](docs/OrganizationApi.md#update_organization_user) | **PUT** /organizations/users/{user} | Update account information
*FlatApi::ScoreApi* | [**add_score_collaborator**](docs/ScoreApi.md#add_score_collaborator) | **POST** /scores/{score}/collaborators | Add a new collaborator
*FlatApi::ScoreApi* | [**add_score_track**](docs/ScoreApi.md#add_score_track) | **POST** /scores/{score}/tracks | Add a new video or audio track to the score
*FlatApi::ScoreApi* | [**create_score**](docs/ScoreApi.md#create_score) | **POST** /scores | Create a new score
*FlatApi::ScoreApi* | [**create_score_revision**](docs/ScoreApi.md#create_score_revision) | **POST** /scores/{score}/revisions | Create a new revision
*FlatApi::ScoreApi* | [**delete_score**](docs/ScoreApi.md#delete_score) | **DELETE** /scores/{score} | Delete a score
*FlatApi::ScoreApi* | [**delete_score_comment**](docs/ScoreApi.md#delete_score_comment) | **DELETE** /scores/{score}/comments/{comment} | Delete a comment
*FlatApi::ScoreApi* | [**delete_score_track**](docs/ScoreApi.md#delete_score_track) | **DELETE** /scores/{score}/tracks/{track} | Remove an audio or video track linked to the score
*FlatApi::ScoreApi* | [**edit_score**](docs/ScoreApi.md#edit_score) | **PUT** /scores/{score} | Edit a score's metadata
*FlatApi::ScoreApi* | [**fork_score**](docs/ScoreApi.md#fork_score) | **POST** /scores/{score}/fork | Fork a score
*FlatApi::ScoreApi* | [**ger_user_likes**](docs/ScoreApi.md#ger_user_likes) | **GET** /users/{user}/likes | List liked scores
*FlatApi::ScoreApi* | [**get_group_scores**](docs/ScoreApi.md#get_group_scores) | **GET** /groups/{group}/scores | List group's scores
*FlatApi::ScoreApi* | [**get_score**](docs/ScoreApi.md#get_score) | **GET** /scores/{score} | Get a score's metadata
*FlatApi::ScoreApi* | [**get_score_collaborator**](docs/ScoreApi.md#get_score_collaborator) | **GET** /scores/{score}/collaborators/{collaborator} | Get a collaborator
*FlatApi::ScoreApi* | [**get_score_collaborators**](docs/ScoreApi.md#get_score_collaborators) | **GET** /scores/{score}/collaborators | List the collaborators
*FlatApi::ScoreApi* | [**get_score_comments**](docs/ScoreApi.md#get_score_comments) | **GET** /scores/{score}/comments | List comments
*FlatApi::ScoreApi* | [**get_score_revision**](docs/ScoreApi.md#get_score_revision) | **GET** /scores/{score}/revisions/{revision} | Get a score revision
*FlatApi::ScoreApi* | [**get_score_revision_data**](docs/ScoreApi.md#get_score_revision_data) | **GET** /scores/{score}/revisions/{revision}/{format} | Get a score revision data
*FlatApi::ScoreApi* | [**get_score_revisions**](docs/ScoreApi.md#get_score_revisions) | **GET** /scores/{score}/revisions | List the revisions
*FlatApi::ScoreApi* | [**get_score_submissions**](docs/ScoreApi.md#get_score_submissions) | **GET** /scores/{score}/submissions | List submissions related to the score
*FlatApi::ScoreApi* | [**get_score_track**](docs/ScoreApi.md#get_score_track) | **GET** /scores/{score}/tracks/{track} | Retrieve the details of an audio or video track linked to a score
*FlatApi::ScoreApi* | [**get_user_scores**](docs/ScoreApi.md#get_user_scores) | **GET** /users/{user}/scores | List user's scores
*FlatApi::ScoreApi* | [**list_score_tracks**](docs/ScoreApi.md#list_score_tracks) | **GET** /scores/{score}/tracks | List the audio or video tracks linked to a score
*FlatApi::ScoreApi* | [**mark_score_comment_resolved**](docs/ScoreApi.md#mark_score_comment_resolved) | **PUT** /scores/{score}/comments/{comment}/resolved | Mark the comment as resolved
*FlatApi::ScoreApi* | [**mark_score_comment_unresolved**](docs/ScoreApi.md#mark_score_comment_unresolved) | **DELETE** /scores/{score}/comments/{comment}/resolved | Mark the comment as unresolved
*FlatApi::ScoreApi* | [**post_score_comment**](docs/ScoreApi.md#post_score_comment) | **POST** /scores/{score}/comments | Post a new comment
*FlatApi::ScoreApi* | [**remove_score_collaborator**](docs/ScoreApi.md#remove_score_collaborator) | **DELETE** /scores/{score}/collaborators/{collaborator} | Delete a collaborator
*FlatApi::ScoreApi* | [**update_score_comment**](docs/ScoreApi.md#update_score_comment) | **PUT** /scores/{score}/comments/{comment} | Update an existing comment
*FlatApi::ScoreApi* | [**update_score_track**](docs/ScoreApi.md#update_score_track) | **PUT** /scores/{score}/tracks/{track} | Update an audio or video track linked to a score
*FlatApi::UserApi* | [**ger_user_likes**](docs/UserApi.md#ger_user_likes) | **GET** /users/{user}/likes | List liked scores
*FlatApi::UserApi* | [**get_user**](docs/UserApi.md#get_user) | **GET** /users/{user} | Get a public user profile
*FlatApi::UserApi* | [**get_user_scores**](docs/UserApi.md#get_user_scores) | **GET** /users/{user}/scores | List user's scores


## Documentation for Models

 - [FlatApi::Assignment](docs/Assignment.md)
 - [FlatApi::AssignmentCopy](docs/AssignmentCopy.md)
 - [FlatApi::AssignmentCreation](docs/AssignmentCreation.md)
 - [FlatApi::AssignmentSubmission](docs/AssignmentSubmission.md)
 - [FlatApi::AssignmentSubmissionUpdate](docs/AssignmentSubmissionUpdate.md)
 - [FlatApi::ClassAttachmentCreation](docs/ClassAttachmentCreation.md)
 - [FlatApi::ClassCreation](docs/ClassCreation.md)
 - [FlatApi::ClassDetails](docs/ClassDetails.md)
 - [FlatApi::ClassDetailsCanvas](docs/ClassDetailsCanvas.md)
 - [FlatApi::ClassDetailsClever](docs/ClassDetailsClever.md)
 - [FlatApi::ClassDetailsGoogleClassroom](docs/ClassDetailsGoogleClassroom.md)
 - [FlatApi::ClassDetailsGoogleDrive](docs/ClassDetailsGoogleDrive.md)
 - [FlatApi::ClassDetailsLti](docs/ClassDetailsLti.md)
 - [FlatApi::ClassRoles](docs/ClassRoles.md)
 - [FlatApi::ClassState](docs/ClassState.md)
 - [FlatApi::ClassUpdate](docs/ClassUpdate.md)
 - [FlatApi::FlatErrorResponse](docs/FlatErrorResponse.md)
 - [FlatApi::FlatLocales](docs/FlatLocales.md)
 - [FlatApi::GoogleClassroomCoursework](docs/GoogleClassroomCoursework.md)
 - [FlatApi::GoogleClassroomSubmission](docs/GoogleClassroomSubmission.md)
 - [FlatApi::Group](docs/Group.md)
 - [FlatApi::GroupDetails](docs/GroupDetails.md)
 - [FlatApi::GroupType](docs/GroupType.md)
 - [FlatApi::LicenseMode](docs/LicenseMode.md)
 - [FlatApi::LicenseSources](docs/LicenseSources.md)
 - [FlatApi::LmsName](docs/LmsName.md)
 - [FlatApi::LtiCredentials](docs/LtiCredentials.md)
 - [FlatApi::LtiCredentialsCreation](docs/LtiCredentialsCreation.md)
 - [FlatApi::MediaAttachment](docs/MediaAttachment.md)
 - [FlatApi::MediaScoreSharingMode](docs/MediaScoreSharingMode.md)
 - [FlatApi::OrganizationInvitation](docs/OrganizationInvitation.md)
 - [FlatApi::OrganizationInvitationCreation](docs/OrganizationInvitationCreation.md)
 - [FlatApi::OrganizationRoles](docs/OrganizationRoles.md)
 - [FlatApi::ScoreCollaborator](docs/ScoreCollaborator.md)
 - [FlatApi::ScoreCollaboratorCreation](docs/ScoreCollaboratorCreation.md)
 - [FlatApi::ScoreComment](docs/ScoreComment.md)
 - [FlatApi::ScoreCommentContext](docs/ScoreCommentContext.md)
 - [FlatApi::ScoreCommentCreation](docs/ScoreCommentCreation.md)
 - [FlatApi::ScoreCommentUpdate](docs/ScoreCommentUpdate.md)
 - [FlatApi::ScoreCommentsCounts](docs/ScoreCommentsCounts.md)
 - [FlatApi::ScoreCreation](docs/ScoreCreation.md)
 - [FlatApi::ScoreCreationType](docs/ScoreCreationType.md)
 - [FlatApi::ScoreData](docs/ScoreData.md)
 - [FlatApi::ScoreDataEncoding](docs/ScoreDataEncoding.md)
 - [FlatApi::ScoreFork](docs/ScoreFork.md)
 - [FlatApi::ScoreLicense](docs/ScoreLicense.md)
 - [FlatApi::ScoreLikesCounts](docs/ScoreLikesCounts.md)
 - [FlatApi::ScoreModification](docs/ScoreModification.md)
 - [FlatApi::ScorePrivacy](docs/ScorePrivacy.md)
 - [FlatApi::ScoreRevision](docs/ScoreRevision.md)
 - [FlatApi::ScoreRevisionCreation](docs/ScoreRevisionCreation.md)
 - [FlatApi::ScoreRevisionStatistics](docs/ScoreRevisionStatistics.md)
 - [FlatApi::ScoreRights](docs/ScoreRights.md)
 - [FlatApi::ScoreSource](docs/ScoreSource.md)
 - [FlatApi::ScoreSummary](docs/ScoreSummary.md)
 - [FlatApi::ScoreTrack](docs/ScoreTrack.md)
 - [FlatApi::ScoreTrackCreation](docs/ScoreTrackCreation.md)
 - [FlatApi::ScoreTrackPoint](docs/ScoreTrackPoint.md)
 - [FlatApi::ScoreTrackState](docs/ScoreTrackState.md)
 - [FlatApi::ScoreTrackType](docs/ScoreTrackType.md)
 - [FlatApi::ScoreTrackUpdate](docs/ScoreTrackUpdate.md)
 - [FlatApi::ScoreViewsCounts](docs/ScoreViewsCounts.md)
 - [FlatApi::UserAdminUpdate](docs/UserAdminUpdate.md)
 - [FlatApi::UserBasics](docs/UserBasics.md)
 - [FlatApi::UserCreation](docs/UserCreation.md)
 - [FlatApi::UserDetailsAdminLicense](docs/UserDetailsAdminLicense.md)
 - [FlatApi::UserInstruments](docs/UserInstruments.md)
 - [FlatApi::ScoreDetails](docs/ScoreDetails.md)
 - [FlatApi::UserPublicSummary](docs/UserPublicSummary.md)
 - [FlatApi::UserDetailsAdmin](docs/UserDetailsAdmin.md)
 - [FlatApi::UserPublic](docs/UserPublic.md)
 - [FlatApi::UserDetails](docs/UserDetails.md)


## Documentation for Authorization


### OAuth2

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://flat.io/auth/oauth
- **Scopes**:
  - account.public_profile: Provides access to the basic person&#39;s public profile. Education profiles may be anonymized with this scope, you can request the scope &#x60;education_profile&#x60; to access to the a basic education account profile.
  - account.education_profile: Provides access to the basic person&#39;s education profile and public organization information.
  - scores.readonly: Allows read-only access to all a user&#39;s scores. You won&#39;t need this scope to read public scores.
  - scores.social: Allow to post comments and like scores
  - scores: Full, permissive scope to access all of a user&#39;s scores.
  - edu.classes: Full, permissive scope to manage the classes.
  - edu.classes.readonly: Read-only access to the classes.
  - edu.assignments: Read-write access to the assignments and submissions.
  - edu.assignments.readonly: Read-only access to the assignments and submissions.
  - edu.admin: Full, permissive scope to manage all the admin of an organization.
  - edu.admin.lti: Access and manage the LTI Credentials for an organization.
  - edu.admin.lti.readonly: Read-only access to the LTI Credentials of an organization.
  - edu.admin.users: Access and manage the users and invitations of the organization.
  - edu.admin.users.readonly: Read-only access to the users and invitations of the organization.
