defmodule Google.Shopping.Merchant.Accounts.V1beta.Homepage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uri, 2, proto3_optional: true, type: :string, deprecated: false
  field :claimed, 3, type: :bool, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetHomepageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UpdateHomepageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :homepage, 1, type: Google.Shopping.Merchant.Accounts.V1beta.Homepage, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ClaimHomepageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UnclaimHomepageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.HomepageService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.HomepageService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetHomepage,
      Google.Shopping.Merchant.Accounts.V1beta.GetHomepageRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Homepage

  rpc :UpdateHomepage,
      Google.Shopping.Merchant.Accounts.V1beta.UpdateHomepageRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Homepage

  rpc :ClaimHomepage,
      Google.Shopping.Merchant.Accounts.V1beta.ClaimHomepageRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Homepage

  rpc :UnclaimHomepage,
      Google.Shopping.Merchant.Accounts.V1beta.UnclaimHomepageRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Homepage
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.HomepageService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.HomepageService.Service
end