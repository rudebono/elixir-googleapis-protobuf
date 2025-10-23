defmodule Google.Ads.Admanager.V1.SiteDisapprovalReasonEnum.SiteDisapprovalReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SITE_DISAPPROVAL_REASON_UNSPECIFIED, 0
  field :CONTENT, 1
  field :OTHER, 2
  field :OWNERSHIP, 3
end

defmodule Google.Ads.Admanager.V1.SiteApprovalStatusEnum.SiteApprovalStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SITE_APPROVAL_STATUS_UNSPECIFIED, 0
  field :APPROVED, 1
  field :DISAPPROVED, 2
  field :DRAFT, 3
  field :REQUIRES_REVIEW, 4
  field :UNCHECKED, 5
end

defmodule Google.Ads.Admanager.V1.SiteDisapprovalReasonEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.SiteApprovalStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
