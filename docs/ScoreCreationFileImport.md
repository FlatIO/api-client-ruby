# FlatApi::ScoreCreationFileImport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the new score. If the title is too long, the API may trim this one.  If this title is not specified, the API will try to (in this order):   - Use the title contained in the file (e.g. [&#x60;movement-title&#x60;](https://usermanuals.musicxml.com/MusicXML/Content/EL-MusicXML-movement-title.htm) or [&#x60;credit-words&#x60;](https://usermanuals.musicxml.com/MusicXML/Content/EL-MusicXML-credit-words.htm) for [MusicXML](http://www.musicxml.com/) files).   - Use the name of the file for files from a specified &#x60;source&#x60; (e.g. Google Drive) or the one in the &#x60;filename&#x60; property   - Set a default title (e.g. \&quot;New Music Score\&quot;)  | [optional] |
| **privacy** | [**ScorePrivacy**](ScorePrivacy.md) |  | [optional][default to &#39;private&#39;] |
| **collection** | **String** | Unique identifier of a collection where the score will be created. If no collection identifier is provided, the score will be stored in the &#x60;root&#x60; directory.  | [optional] |
| **google_drive_folder** | **String** | If the user uses Google Drive and this properties is specified, the file will be created in this directory. The currently user creating the file must be granted to write in this directory.  | [optional] |
| **filename** | **String** | If this is an imported file, its filename | [optional] |
| **data** | **String** | The data of the score file. It must be a MusicXML 3 file (&#x60;vnd.recordare.musicxml&#x60; or &#x60;vnd.recordare.musicxml+xml&#x60;), a MIDI file (&#x60;audio/midi&#x60;) or a Flat.json (aka Adagio.json) file. Binary payloads (&#x60;vnd.recordare.musicxml&#x60; and &#x60;audio/midi&#x60;) can be encoded in Base64, in this case the &#x60;dataEncoding&#x60; property must match the encoding used for the API request.  |  |
| **data_encoding** | **String** | The optional encoding of the score data. This property must match the encoding used for the &#x60;data&#x60; property. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreCreationFileImport.new(
  title: null,
  privacy: null,
  collection: null,
  google_drive_folder: null,
  filename: null,
  data: null,
  data_encoding: null
)
```

