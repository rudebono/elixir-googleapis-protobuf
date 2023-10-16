defmodule Google.Robotics.Developer.Modelserving.V1.DoPingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Robotics.Developer.Modelserving.V1.DoPingResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Robotics.Developer.Modelserving.V1.GeneratePlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prompt, 1, type: Google.Robotics.Developer.Modelserving.V1.Prompt, deprecated: false
end

defmodule Google.Robotics.Developer.Modelserving.V1.GeneratePlanResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :plan, 1, type: Google.Robotics.Developer.Modelserving.V1.Plan
end

defmodule Google.Robotics.Developer.Modelserving.V1.ModelServing.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.robotics.developer.modelserving.v1.ModelServing",
    protoc_gen_elixir_version: "0.12.0"

  rpc :DoPing,
      Google.Robotics.Developer.Modelserving.V1.DoPingRequest,
      Google.Robotics.Developer.Modelserving.V1.DoPingResponse

  rpc :GeneratePlan,
      Google.Robotics.Developer.Modelserving.V1.GeneratePlanRequest,
      Google.Robotics.Developer.Modelserving.V1.GeneratePlanResponse
end

defmodule Google.Robotics.Developer.Modelserving.V1.ModelServing.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Robotics.Developer.Modelserving.V1.ModelServing.Service
end