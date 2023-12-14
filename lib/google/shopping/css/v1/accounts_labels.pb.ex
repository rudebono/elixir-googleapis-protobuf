defmodule Google.Shopping.Css.V1.AccountLabel.LabelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LABEL_TYPE_UNSPECIFIED, 0
  field :MANUAL, 1
  field :AUTOMATIC, 2
end

defmodule Google.Shopping.Css.V1.AccountLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :label_id, 2, type: :int64, json_name: "labelId", deprecated: false
  field :account_id, 3, type: :int64, json_name: "accountId", deprecated: false
  field :display_name, 4, proto3_optional: true, type: :string, json_name: "displayName"
  field :description, 5, proto3_optional: true, type: :string

  field :label_type, 6,
    type: Google.Shopping.Css.V1.AccountLabel.LabelType,
    json_name: "labelType",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Css.V1.ListAccountLabelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Shopping.Css.V1.ListAccountLabelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :account_labels, 1,
    repeated: true,
    type: Google.Shopping.Css.V1.AccountLabel,
    json_name: "accountLabels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Css.V1.CreateAccountLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :account_label, 2,
    type: Google.Shopping.Css.V1.AccountLabel,
    json_name: "accountLabel",
    deprecated: false
end

defmodule Google.Shopping.Css.V1.UpdateAccountLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :account_label, 1,
    type: Google.Shopping.Css.V1.AccountLabel,
    json_name: "accountLabel",
    deprecated: false
end

defmodule Google.Shopping.Css.V1.DeleteAccountLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Css.V1.AccountLabelsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.css.v1.AccountLabelsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListAccountLabels,
      Google.Shopping.Css.V1.ListAccountLabelsRequest,
      Google.Shopping.Css.V1.ListAccountLabelsResponse

  rpc :CreateAccountLabel,
      Google.Shopping.Css.V1.CreateAccountLabelRequest,
      Google.Shopping.Css.V1.AccountLabel

  rpc :UpdateAccountLabel,
      Google.Shopping.Css.V1.UpdateAccountLabelRequest,
      Google.Shopping.Css.V1.AccountLabel

  rpc :DeleteAccountLabel, Google.Shopping.Css.V1.DeleteAccountLabelRequest, Google.Protobuf.Empty
end

defmodule Google.Shopping.Css.V1.AccountLabelsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Css.V1.AccountLabelsService.Service
end