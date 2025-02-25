defmodule Google.Cloud.Aiplatform.V1beta1.CreateScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :schedule, 2, type: Google.Cloud.Aiplatform.V1beta1.Schedule, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListSchedulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListSchedulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :schedules, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Schedule
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PauseScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ResumeScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :catch_up, 2, type: :bool, json_name: "catchUp", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :schedule, 1, type: Google.Cloud.Aiplatform.V1beta1.Schedule, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ScheduleService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.ScheduleService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateSchedule,
      Google.Cloud.Aiplatform.V1beta1.CreateScheduleRequest,
      Google.Cloud.Aiplatform.V1beta1.Schedule

  rpc :DeleteSchedule,
      Google.Cloud.Aiplatform.V1beta1.DeleteScheduleRequest,
      Google.Longrunning.Operation

  rpc :GetSchedule,
      Google.Cloud.Aiplatform.V1beta1.GetScheduleRequest,
      Google.Cloud.Aiplatform.V1beta1.Schedule

  rpc :ListSchedules,
      Google.Cloud.Aiplatform.V1beta1.ListSchedulesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListSchedulesResponse

  rpc :PauseSchedule, Google.Cloud.Aiplatform.V1beta1.PauseScheduleRequest, Google.Protobuf.Empty

  rpc :ResumeSchedule,
      Google.Cloud.Aiplatform.V1beta1.ResumeScheduleRequest,
      Google.Protobuf.Empty

  rpc :UpdateSchedule,
      Google.Cloud.Aiplatform.V1beta1.UpdateScheduleRequest,
      Google.Cloud.Aiplatform.V1beta1.Schedule
end

defmodule Google.Cloud.Aiplatform.V1beta1.ScheduleService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.ScheduleService.Service
end
