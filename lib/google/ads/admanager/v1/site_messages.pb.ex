defmodule Google.Ads.Admanager.V1.Site do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :url, 3, proto3_optional: true, type: :string, deprecated: false

  field :child_network_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "childNetworkCode",
    deprecated: false

  field :approval_status, 5,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.SiteApprovalStatusEnum.SiteApprovalStatus,
    json_name: "approvalStatus",
    enum: true,
    deprecated: false

  field :approval_status_update_time, 6,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "approvalStatusUpdateTime",
    deprecated: false

  field :disapproval_reasons, 7,
    repeated: true,
    type: Google.Ads.Admanager.V1.DisapprovalReason,
    json_name: "disapprovalReasons",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.DisapprovalReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.SiteDisapprovalReasonEnum.SiteDisapprovalReason,
    enum: true,
    deprecated: false

  field :details, 2, proto3_optional: true, type: :string, deprecated: false
end
