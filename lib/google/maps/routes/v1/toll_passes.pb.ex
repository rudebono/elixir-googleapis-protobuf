defmodule Google.Maps.Routes.V1.TollPass do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TOLL_PASS_UNSPECIFIED, 0
  field :AU_LINKT, 2
  field :AR_TELEPASE, 3
  field :BR_CONECTCAR, 7
  field :BR_MOVE_MAIS, 8
  field :BR_SEM_PARAR, 9
  field :BR_TAGGY, 10
  field :BR_VELOE, 11
  field :ID_E_TOLL, 16
  field :MX_TAG_IAVE, 12
  field :MX_TAG_TELEVIA, 13
  field :MX_VIAPASS, 14
  field :US_CA_FASTRAK, 4
  field :US_IL_IPASS, 5
  field :US_MA_EZPASSMA, 6
  field :US_NY_EZPASSNY, 15
  field :US_WA_GOOD_TO_GO, 1
end
