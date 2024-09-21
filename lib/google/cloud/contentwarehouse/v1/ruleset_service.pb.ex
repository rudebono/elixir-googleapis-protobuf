defmodule Google.Cloud.Contentwarehouse.V1.RuleSetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.contentwarehouse.v1.RuleSetService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateRuleSet,
      Google.Cloud.Contentwarehouse.V1.CreateRuleSetRequest,
      Google.Cloud.Contentwarehouse.V1.RuleSet

  rpc :GetRuleSet,
      Google.Cloud.Contentwarehouse.V1.GetRuleSetRequest,
      Google.Cloud.Contentwarehouse.V1.RuleSet

  rpc :UpdateRuleSet,
      Google.Cloud.Contentwarehouse.V1.UpdateRuleSetRequest,
      Google.Cloud.Contentwarehouse.V1.RuleSet

  rpc :DeleteRuleSet, Google.Cloud.Contentwarehouse.V1.DeleteRuleSetRequest, Google.Protobuf.Empty

  rpc :ListRuleSets,
      Google.Cloud.Contentwarehouse.V1.ListRuleSetsRequest,
      Google.Cloud.Contentwarehouse.V1.ListRuleSetsResponse
end

defmodule Google.Cloud.Contentwarehouse.V1.RuleSetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Contentwarehouse.V1.RuleSetService.Service
end