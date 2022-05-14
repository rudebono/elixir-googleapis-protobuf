defmodule Google.Cloud.Talent.V4beta1.Application.ApplicationState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :APPLICATION_STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :CANDIDATE_WITHDREW, 2
  field :EMPLOYER_WITHDREW, 3
  field :COMPLETED, 4
  field :CLOSED, 5
end
defmodule Google.Cloud.Talent.V4beta1.Application.ApplicationStage do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :APPLICATION_STAGE_UNSPECIFIED, 0
  field :NEW, 1
  field :SCREEN, 2
  field :HIRING_MANAGER_REVIEW, 3
  field :INTERVIEW, 4
  field :OFFER_EXTENDED, 5
  field :OFFER_ACCEPTED, 6
  field :STARTED, 7
end
defmodule Google.Cloud.Talent.V4beta1.Application do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :external_id, 31, type: :string, json_name: "externalId", deprecated: false
  field :profile, 2, type: :string, deprecated: false
  field :job, 4, type: :string, deprecated: false
  field :company, 5, type: :string, deprecated: false
  field :application_date, 7, type: Google.Type.Date, json_name: "applicationDate"

  field :stage, 11,
    type: Google.Cloud.Talent.V4beta1.Application.ApplicationStage,
    enum: true,
    deprecated: false

  field :state, 13, type: Google.Cloud.Talent.V4beta1.Application.ApplicationState, enum: true
  field :interviews, 16, repeated: true, type: Google.Cloud.Talent.V4beta1.Interview
  field :referral, 18, type: Google.Protobuf.BoolValue

  field :create_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 20, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :outcome_notes, 21, type: :string, json_name: "outcomeNotes"
  field :outcome, 22, type: Google.Cloud.Talent.V4beta1.Outcome, enum: true
  field :is_match, 28, type: Google.Protobuf.BoolValue, json_name: "isMatch", deprecated: false
  field :job_title_snippet, 29, type: :string, json_name: "jobTitleSnippet", deprecated: false
end
