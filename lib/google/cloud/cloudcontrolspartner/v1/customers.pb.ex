defmodule Google.Cloud.Cloudcontrolspartner.V1.CustomerOnboardingStep.Step do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STEP_UNSPECIFIED, 0
  field :KAJ_ENROLLMENT, 1
  field :CUSTOMER_ENVIRONMENT, 2
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.Customer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :customer_onboarding_state, 3,
    type: Google.Cloud.Cloudcontrolspartner.V1.CustomerOnboardingState,
    json_name: "customerOnboardingState",
    deprecated: false

  field :is_onboarded, 4, type: :bool, json_name: "isOnboarded", deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.ListCustomersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.ListCustomersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customers, 1, repeated: true, type: Google.Cloud.Cloudcontrolspartner.V1.Customer
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.GetCustomerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.CustomerOnboardingState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :onboarding_steps, 1,
    repeated: true,
    type: Google.Cloud.Cloudcontrolspartner.V1.CustomerOnboardingStep,
    json_name: "onboardingSteps"
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.CustomerOnboardingStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :step, 1,
    type: Google.Cloud.Cloudcontrolspartner.V1.CustomerOnboardingStep.Step,
    enum: true

  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :completion_time, 3, type: Google.Protobuf.Timestamp, json_name: "completionTime"

  field :completion_state, 4,
    type: Google.Cloud.Cloudcontrolspartner.V1.CompletionState,
    json_name: "completionState",
    enum: true,
    deprecated: false
end