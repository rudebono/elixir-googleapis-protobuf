defmodule Google.Cloud.Retail.V2alpha.MerchantCenterAccountLink.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ACTIVE, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Retail.V2alpha.MerchantCenterAccountLink.MerchantCenterFeedFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :primary_feed_id, 1, type: :int64, json_name: "primaryFeedId"
  field :primary_feed_name, 2, type: :string, json_name: "primaryFeedName"
end

defmodule Google.Cloud.Retail.V2alpha.MerchantCenterAccountLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 8, type: :string, deprecated: false

  field :merchant_center_account_id, 2,
    type: :int64,
    json_name: "merchantCenterAccountId",
    deprecated: false

  field :branch_id, 3, type: :string, json_name: "branchId", deprecated: false
  field :feed_label, 4, type: :string, json_name: "feedLabel"
  field :language_code, 5, type: :string, json_name: "languageCode"

  field :feed_filters, 6,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.MerchantCenterAccountLink.MerchantCenterFeedFilter,
    json_name: "feedFilters"

  field :state, 7,
    type: Google.Cloud.Retail.V2alpha.MerchantCenterAccountLink.State,
    enum: true,
    deprecated: false

  field :project_id, 9, type: :string, json_name: "projectId", deprecated: false
  field :source, 10, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.CreateMerchantCenterAccountLinkMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end