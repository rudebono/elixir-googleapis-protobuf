defmodule Google.Shopping.Merchant.Accounts.V1.Homepage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uri, 2, proto3_optional: true, type: :string, deprecated: false
  field :claimed, 3, type: :bool, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetHomepageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.UpdateHomepageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :homepage, 1, type: Google.Shopping.Merchant.Accounts.V1.Homepage, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ClaimHomepageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :overwrite, 2, type: :bool, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.UnclaimHomepageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.HomepageService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.HomepageService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetHomepage,
      Google.Shopping.Merchant.Accounts.V1.GetHomepageRequest,
      Google.Shopping.Merchant.Accounts.V1.Homepage

  rpc :UpdateHomepage,
      Google.Shopping.Merchant.Accounts.V1.UpdateHomepageRequest,
      Google.Shopping.Merchant.Accounts.V1.Homepage

  rpc :ClaimHomepage,
      Google.Shopping.Merchant.Accounts.V1.ClaimHomepageRequest,
      Google.Shopping.Merchant.Accounts.V1.Homepage

  rpc :UnclaimHomepage,
      Google.Shopping.Merchant.Accounts.V1.UnclaimHomepageRequest,
      Google.Shopping.Merchant.Accounts.V1.Homepage
end

defmodule Google.Shopping.Merchant.Accounts.V1.HomepageService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.HomepageService.Service
end
