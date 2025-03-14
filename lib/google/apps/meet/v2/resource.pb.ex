defmodule Google.Apps.Meet.V2.SpaceConfig.AccessType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ACCESS_TYPE_UNSPECIFIED, 0
  field :OPEN, 1
  field :TRUSTED, 2
  field :RESTRICTED, 3
end

defmodule Google.Apps.Meet.V2.SpaceConfig.EntryPointAccess do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENTRY_POINT_ACCESS_UNSPECIFIED, 0
  field :ALL, 1
  field :CREATOR_APP_ONLY, 2
end

defmodule Google.Apps.Meet.V2.Recording.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
  field :ENDED, 2
  field :FILE_GENERATED, 3
end

defmodule Google.Apps.Meet.V2.Transcript.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
  field :ENDED, 2
  field :FILE_GENERATED, 3
end

defmodule Google.Apps.Meet.V2.Space do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :meeting_uri, 2, type: :string, json_name: "meetingUri", deprecated: false
  field :meeting_code, 3, type: :string, json_name: "meetingCode", deprecated: false
  field :config, 5, type: Google.Apps.Meet.V2.SpaceConfig

  field :active_conference, 6,
    type: Google.Apps.Meet.V2.ActiveConference,
    json_name: "activeConference"
end

defmodule Google.Apps.Meet.V2.ActiveConference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conference_record, 1, type: :string, json_name: "conferenceRecord", deprecated: false
end

defmodule Google.Apps.Meet.V2.SpaceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :access_type, 1,
    type: Google.Apps.Meet.V2.SpaceConfig.AccessType,
    json_name: "accessType",
    enum: true

  field :entry_point_access, 2,
    type: Google.Apps.Meet.V2.SpaceConfig.EntryPointAccess,
    json_name: "entryPointAccess",
    enum: true
end

defmodule Google.Apps.Meet.V2.ConferenceRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :expire_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :space, 5, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.Participant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :user, 0

  field :signedin_user, 4,
    type: Google.Apps.Meet.V2.SignedinUser,
    json_name: "signedinUser",
    oneof: 0

  field :anonymous_user, 5,
    type: Google.Apps.Meet.V2.AnonymousUser,
    json_name: "anonymousUser",
    oneof: 0

  field :phone_user, 6, type: Google.Apps.Meet.V2.PhoneUser, json_name: "phoneUser", oneof: 0
  field :name, 1, type: :string, deprecated: false

  field :earliest_start_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "earliestStartTime",
    deprecated: false

  field :latest_end_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "latestEndTime",
    deprecated: false
end

defmodule Google.Apps.Meet.V2.ParticipantSession do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Apps.Meet.V2.SignedinUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Apps.Meet.V2.AnonymousUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Apps.Meet.V2.PhoneUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Apps.Meet.V2.Recording do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination, 0

  field :drive_destination, 6,
    type: Google.Apps.Meet.V2.DriveDestination,
    json_name: "driveDestination",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :state, 3, type: Google.Apps.Meet.V2.Recording.State, enum: true, deprecated: false
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Apps.Meet.V2.DriveDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file, 1, type: :string, deprecated: false
  field :export_uri, 2, type: :string, json_name: "exportUri", deprecated: false
end

defmodule Google.Apps.Meet.V2.Transcript do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination, 0

  field :docs_destination, 6,
    type: Google.Apps.Meet.V2.DocsDestination,
    json_name: "docsDestination",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :state, 3, type: Google.Apps.Meet.V2.Transcript.State, enum: true, deprecated: false
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Apps.Meet.V2.DocsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: :string, deprecated: false
  field :export_uri, 2, type: :string, json_name: "exportUri", deprecated: false
end

defmodule Google.Apps.Meet.V2.TranscriptEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :participant, 2, type: :string, deprecated: false
  field :text, 3, type: :string, deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end
