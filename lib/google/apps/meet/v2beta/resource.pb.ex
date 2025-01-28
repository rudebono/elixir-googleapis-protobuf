defmodule Google.Apps.Meet.V2beta.SpaceConfig.AccessType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ACCESS_TYPE_UNSPECIFIED, 0
  field :OPEN, 1
  field :TRUSTED, 2
  field :RESTRICTED, 3
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig.EntryPointAccess do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ENTRY_POINT_ACCESS_UNSPECIFIED, 0
  field :ALL, 1
  field :CREATOR_APP_ONLY, 2
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig.Moderation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MODERATION_UNSPECIFIED, 0
  field :OFF, 1
  field :ON, 2
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig.AttendanceReportGenerationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ATTENDANCE_REPORT_GENERATION_TYPE_UNSPECIFIED, 0
  field :GENERATE_REPORT, 1
  field :DO_NOT_GENERATE, 2
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig.ModerationRestrictions.RestrictionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RESTRICTION_TYPE_UNSPECIFIED, 0
  field :HOSTS_ONLY, 1
  field :NO_RESTRICTION, 2
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig.ModerationRestrictions.DefaultJoinAsViewerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DEFAULT_JOIN_AS_VIEWER_TYPE_UNSPECIFIED, 0
  field :ON, 1
  field :OFF, 2
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig.AutoGenerationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :AUTO_GENERATION_TYPE_UNSPECIFIED, 0
  field :ON, 1
  field :OFF, 2
end

defmodule Google.Apps.Meet.V2beta.Member.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :COHOST, 1
end

defmodule Google.Apps.Meet.V2beta.Recording.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
  field :ENDED, 2
  field :FILE_GENERATED, 3
end

defmodule Google.Apps.Meet.V2beta.Transcript.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
  field :ENDED, 2
  field :FILE_GENERATED, 3
end

defmodule Google.Apps.Meet.V2beta.Space do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :meeting_uri, 2, type: :string, json_name: "meetingUri", deprecated: false
  field :meeting_code, 3, type: :string, json_name: "meetingCode", deprecated: false
  field :config, 5, type: Google.Apps.Meet.V2beta.SpaceConfig

  field :active_conference, 6,
    type: Google.Apps.Meet.V2beta.ActiveConference,
    json_name: "activeConference"
end

defmodule Google.Apps.Meet.V2beta.ActiveConference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :conference_record, 1, type: :string, json_name: "conferenceRecord", deprecated: false
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig.ModerationRestrictions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :chat_restriction, 1,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ModerationRestrictions.RestrictionType,
    json_name: "chatRestriction",
    enum: true

  field :reaction_restriction, 2,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ModerationRestrictions.RestrictionType,
    json_name: "reactionRestriction",
    enum: true

  field :present_restriction, 3,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ModerationRestrictions.RestrictionType,
    json_name: "presentRestriction",
    enum: true

  field :default_join_as_viewer_type, 4,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ModerationRestrictions.DefaultJoinAsViewerType,
    json_name: "defaultJoinAsViewerType",
    enum: true
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig.RecordingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :auto_recording_generation, 2,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig.AutoGenerationType,
    json_name: "autoRecordingGeneration",
    enum: true
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig.TranscriptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :auto_transcription_generation, 2,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig.AutoGenerationType,
    json_name: "autoTranscriptionGeneration",
    enum: true
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig.SmartNotesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :auto_smart_notes_generation, 2,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig.AutoGenerationType,
    json_name: "autoSmartNotesGeneration",
    enum: true
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :recording_config, 1,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig.RecordingConfig,
    json_name: "recordingConfig"

  field :transcription_config, 2,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig.TranscriptionConfig,
    json_name: "transcriptionConfig"

  field :smart_notes_config, 3,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig.SmartNotesConfig,
    json_name: "smartNotesConfig"
end

defmodule Google.Apps.Meet.V2beta.SpaceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :access_type, 1,
    type: Google.Apps.Meet.V2beta.SpaceConfig.AccessType,
    json_name: "accessType",
    enum: true

  field :entry_point_access, 2,
    type: Google.Apps.Meet.V2beta.SpaceConfig.EntryPointAccess,
    json_name: "entryPointAccess",
    enum: true

  field :moderation, 3, type: Google.Apps.Meet.V2beta.SpaceConfig.Moderation, enum: true

  field :moderation_restrictions, 4,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ModerationRestrictions,
    json_name: "moderationRestrictions"

  field :attendance_report_generation_type, 6,
    type: Google.Apps.Meet.V2beta.SpaceConfig.AttendanceReportGenerationType,
    json_name: "attendanceReportGenerationType",
    enum: true

  field :artifact_config, 7,
    type: Google.Apps.Meet.V2beta.SpaceConfig.ArtifactConfig,
    json_name: "artifactConfig"
end

defmodule Google.Apps.Meet.V2beta.Member do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :email, 2, type: :string
  field :role, 3, type: Google.Apps.Meet.V2beta.Member.Role, enum: true
  field :user, 4, type: :string
end

defmodule Google.Apps.Meet.V2beta.ConferenceRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :expire_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :space, 5, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.Participant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :user, 0

  field :signedin_user, 4,
    type: Google.Apps.Meet.V2beta.SignedinUser,
    json_name: "signedinUser",
    oneof: 0

  field :anonymous_user, 5,
    type: Google.Apps.Meet.V2beta.AnonymousUser,
    json_name: "anonymousUser",
    oneof: 0

  field :phone_user, 6, type: Google.Apps.Meet.V2beta.PhoneUser, json_name: "phoneUser", oneof: 0
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

defmodule Google.Apps.Meet.V2beta.ParticipantSession do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Apps.Meet.V2beta.SignedinUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :user, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Apps.Meet.V2beta.AnonymousUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Apps.Meet.V2beta.PhoneUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Apps.Meet.V2beta.Recording do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :destination, 0

  field :drive_destination, 6,
    type: Google.Apps.Meet.V2beta.DriveDestination,
    json_name: "driveDestination",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :state, 3, type: Google.Apps.Meet.V2beta.Recording.State, enum: true, deprecated: false
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Apps.Meet.V2beta.DriveDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :file, 1, type: :string, deprecated: false
  field :export_uri, 2, type: :string, json_name: "exportUri", deprecated: false
end

defmodule Google.Apps.Meet.V2beta.Transcript do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :destination, 0

  field :docs_destination, 6,
    type: Google.Apps.Meet.V2beta.DocsDestination,
    json_name: "docsDestination",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :state, 3, type: Google.Apps.Meet.V2beta.Transcript.State, enum: true, deprecated: false
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Apps.Meet.V2beta.DocsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :document, 1, type: :string, deprecated: false
  field :export_uri, 2, type: :string, json_name: "exportUri", deprecated: false
end

defmodule Google.Apps.Meet.V2beta.TranscriptEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :participant, 2, type: :string, deprecated: false
  field :text, 3, type: :string, deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end
