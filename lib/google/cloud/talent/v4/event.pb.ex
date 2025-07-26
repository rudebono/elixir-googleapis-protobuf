defmodule Google.Cloud.Talent.V4.JobEvent.JobEventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :JOB_EVENT_TYPE_UNSPECIFIED, 0
  field :IMPRESSION, 1
  field :VIEW, 2
  field :VIEW_REDIRECT, 3
  field :APPLICATION_START, 4
  field :APPLICATION_FINISH, 5
  field :APPLICATION_QUICK_SUBMISSION, 6
  field :APPLICATION_REDIRECT, 7
  field :APPLICATION_START_FROM_SEARCH, 8
  field :APPLICATION_REDIRECT_FROM_SEARCH, 9
  field :APPLICATION_COMPANY_SUBMIT, 10
  field :BOOKMARK, 11
  field :NOTIFICATION, 12
  field :HIRED, 13
  field :SENT_CV, 14
  field :INTERVIEW_GRANTED, 15
end

defmodule Google.Cloud.Talent.V4.ClientEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :event, 0

  field :request_id, 1, type: :string, json_name: "requestId"
  field :event_id, 2, type: :string, json_name: "eventId", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :job_event, 5, type: Google.Cloud.Talent.V4.JobEvent, json_name: "jobEvent", oneof: 0
  field :event_notes, 9, type: :string, json_name: "eventNotes"
end

defmodule Google.Cloud.Talent.V4.JobEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Talent.V4.JobEvent.JobEventType,
    enum: true,
    deprecated: false

  field :jobs, 2, repeated: true, type: :string, deprecated: false
end
