defmodule Google.Cloud.Compute.V1.AccessConfig.NetworkTier do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_NETWORK_TIER, 0
  field :FIXED_STANDARD, 310_464_328
  field :PREMIUM, 399_530_551
  field :STANDARD, 484_642_493
  field :STANDARD_OVERRIDES_FIXED_STANDARD, 465_847_234
end

defmodule Google.Cloud.Compute.V1.AccessConfig.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :DIRECT_IPV6, 4_397_213
  field :ONE_TO_ONE_NAT, 84_090_205
end

defmodule Google.Cloud.Compute.V1.Address.AddressType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ADDRESS_TYPE, 0
  field :EXTERNAL, 35_607_499
  field :INTERNAL, 279_295_677
  field :UNSPECIFIED_TYPE, 53_933_922
end

defmodule Google.Cloud.Compute.V1.Address.IpVersion do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_IP_VERSION, 0
  field :IPV4, 2_254_341
  field :IPV6, 2_254_343
  field :UNSPECIFIED_VERSION, 21_850_000
end

defmodule Google.Cloud.Compute.V1.Address.NetworkTier do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_NETWORK_TIER, 0
  field :FIXED_STANDARD, 310_464_328
  field :PREMIUM, 399_530_551
  field :STANDARD, 484_642_493
  field :STANDARD_OVERRIDES_FIXED_STANDARD, 465_847_234
end

defmodule Google.Cloud.Compute.V1.Address.Purpose do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PURPOSE, 0
  field :DNS_RESOLVER, 476_114_556
  field :GCE_ENDPOINT, 230_515_243
  field :IPSEC_INTERCONNECT, 340_437_251
  field :NAT_AUTO, 163_666_477
  field :PRIVATE_SERVICE_CONNECT, 48_134_724
  field :SERVERLESS, 270_492_508
  field :SHARED_LOADBALANCER_VIP, 294_447_572
  field :VPC_PEERING, 400_800_170
end

defmodule Google.Cloud.Compute.V1.Address.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :IN_USE, 17_393_485
  field :RESERVED, 432_241_448
  field :RESERVING, 514_587_225
end

defmodule Google.Cloud.Compute.V1.AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk.Interface do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_INTERFACE, 0
  field :NVME, 2_408_800
  field :SCSI, 2_539_686
end

defmodule Google.Cloud.Compute.V1.AttachedDisk.Architecture do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ARCHITECTURE, 0
  field :ARCHITECTURE_UNSPECIFIED, 394_750_507
  field :ARM64, 62_547_450
  field :X86_64, 425_300_551
end

defmodule Google.Cloud.Compute.V1.AttachedDisk.Interface do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_INTERFACE, 0
  field :NVME, 2_408_800
  field :SCSI, 2_539_686
end

defmodule Google.Cloud.Compute.V1.AttachedDisk.Mode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MODE, 0
  field :READ_ONLY, 91_950_261
  field :READ_WRITE, 173_607_894
end

defmodule Google.Cloud.Compute.V1.AttachedDisk.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :PERSISTENT, 460_683_927
  field :SCRATCH, 496_778_970
end

defmodule Google.Cloud.Compute.V1.AttachedDiskInitializeParams.Architecture do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ARCHITECTURE, 0
  field :ARCHITECTURE_UNSPECIFIED, 394_750_507
  field :ARM64, 62_547_450
  field :X86_64, 425_300_551
end

defmodule Google.Cloud.Compute.V1.AttachedDiskInitializeParams.OnUpdateAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ON_UPDATE_ACTION, 0
  field :RECREATE_DISK, 494_767_853
  field :RECREATE_DISK_IF_SOURCE_CHANGED, 398_099_712
  field :USE_EXISTING_DISK, 232_682_233
end

defmodule Google.Cloud.Compute.V1.AuditLogConfig.LogType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LOG_TYPE, 0
  field :ADMIN_READ, 128_951_462
  field :DATA_READ, 305_224_971
  field :DATA_WRITE, 340_181_738
  field :LOG_TYPE_UNSPECIFIED, 154_527_053
end

defmodule Google.Cloud.Compute.V1.AuthorizationLoggingOptions.PermissionType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PERMISSION_TYPE, 0
  field :ADMIN_READ, 128_951_462
  field :ADMIN_WRITE, 244_412_079
  field :DATA_READ, 305_224_971
  field :DATA_WRITE, 340_181_738
  field :PERMISSION_TYPE_UNSPECIFIED, 440_313_346
end

defmodule Google.Cloud.Compute.V1.Autoscaler.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :ACTIVE, 314_733_318
  field :DELETING, 528_602_024
  field :ERROR, 66_247_144
  field :PENDING, 35_394_935
end

defmodule Google.Cloud.Compute.V1.AutoscalerStatusDetails.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :ALL_INSTANCES_UNHEALTHY, 404_965_477
  field :BACKEND_SERVICE_DOES_NOT_EXIST, 191_417_626
  field :CAPPED_AT_MAX_NUM_REPLICAS, 518_617
  field :CUSTOM_METRIC_DATA_POINTS_TOO_SPARSE, 328_964_659
  field :CUSTOM_METRIC_INVALID, 204_430_550
  field :MIN_EQUALS_MAX, 2_821_361
  field :MISSING_CUSTOM_METRIC_DATA_POINTS, 94_885_086
  field :MISSING_LOAD_BALANCING_DATA_POINTS, 509_858_898
  field :MODE_OFF, 164_169_907
  field :MODE_ONLY_SCALE_OUT, 3_840_994
  field :MODE_ONLY_UP, 100_969_842
  field :MORE_THAN_ONE_BACKEND_SERVICE, 151_922_141
  field :NOT_ENOUGH_QUOTA_AVAILABLE, 403_101_631
  field :REGION_RESOURCE_STOCKOUT, 528_622_846
  field :SCALING_TARGET_DOES_NOT_EXIST, 122_636_699
  field :SCHEDULED_INSTANCES_GREATER_THAN_AUTOSCALER_MAX, 29_275_586
  field :SCHEDULED_INSTANCES_LESS_THAN_AUTOSCALER_MIN, 398_287_669
  field :UNKNOWN, 433_141_802
  field :UNSUPPORTED_MAX_RATE_LOAD_BALANCING_CONFIGURATION, 330_845_009
  field :ZONE_RESOURCE_STOCKOUT, 210_200_502
end

defmodule Google.Cloud.Compute.V1.AutoscalingPolicy.Mode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MODE, 0
  field :OFF, 78159
  field :ON, 2527
  field :ONLY_SCALE_OUT, 152_713_670
  field :ONLY_UP, 478_095_374
end

defmodule Google.Cloud.Compute.V1.AutoscalingPolicyCpuUtilization.PredictiveMethod do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PREDICTIVE_METHOD, 0
  field :NONE, 2_402_104
  field :OPTIMIZE_AVAILABILITY, 11_629_437
end

defmodule Google.Cloud.Compute.V1.AutoscalingPolicyCustomMetricUtilization.UtilizationTargetType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_UTILIZATION_TARGET_TYPE, 0
  field :DELTA_PER_MINUTE, 87_432_861
  field :DELTA_PER_SECOND, 255_180_029
  field :GAUGE, 67_590_361
end

defmodule Google.Cloud.Compute.V1.Backend.BalancingMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_BALANCING_MODE, 0
  field :CONNECTION, 246_311_646
  field :RATE, 2_508_000
  field :UTILIZATION, 157_008_386
end

defmodule Google.Cloud.Compute.V1.BackendBucketCdnPolicy.CacheMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CACHE_MODE, 0
  field :CACHE_ALL_STATIC, 355_027_945
  field :FORCE_CACHE_ALL, 486_026_928
  field :INVALID_CACHE_MODE, 381_295_560
  field :USE_ORIGIN_HEADERS, 55_380_261
end

defmodule Google.Cloud.Compute.V1.BackendService.LoadBalancingScheme do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LOAD_BALANCING_SCHEME, 0
  field :EXTERNAL, 35_607_499
  field :EXTERNAL_MANAGED, 512_006_923
  field :INTERNAL, 279_295_677
  field :INTERNAL_MANAGED, 37_350_397
  field :INTERNAL_SELF_MANAGED, 236_211_150
  field :INVALID_LOAD_BALANCING_SCHEME, 275_352_060
end

defmodule Google.Cloud.Compute.V1.BackendService.LocalityLbPolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LOCALITY_LB_POLICY, 0
  field :INVALID_LB_POLICY, 323_318_707
  field :LEAST_REQUEST, 46_604_921
  field :MAGLEV, 119_180_266
  field :ORIGINAL_DESTINATION, 166_297_216
  field :RANDOM, 262_527_171
  field :RING_HASH, 432_795_069
  field :ROUND_ROBIN, 153_895_801
end

defmodule Google.Cloud.Compute.V1.BackendService.Protocol do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROTOCOL, 0
  field :GRPC, 2_196_510
  field :HTTP, 2_228_360
  field :HTTP2, 69_079_210
  field :HTTPS, 69_079_243
  field :SSL, 82412
  field :TCP, 82881
  field :UDP, 83873
  field :UNSPECIFIED, 526_786_327
end

defmodule Google.Cloud.Compute.V1.BackendService.SessionAffinity do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_SESSION_AFFINITY, 0
  field :CLIENT_IP, 345_665_051
  field :CLIENT_IP_NO_DESTINATION, 106_122_516
  field :CLIENT_IP_PORT_PROTO, 221_722_926
  field :CLIENT_IP_PROTO, 25_322_148
  field :GENERATED_COOKIE, 370_321_204
  field :HEADER_FIELD, 200_737_960
  field :HTTP_COOKIE, 494_981_627
  field :NONE, 2_402_104
end

defmodule Google.Cloud.Compute.V1.BackendServiceCdnPolicy.CacheMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CACHE_MODE, 0
  field :CACHE_ALL_STATIC, 355_027_945
  field :FORCE_CACHE_ALL, 486_026_928
  field :INVALID_CACHE_MODE, 381_295_560
  field :USE_ORIGIN_HEADERS, 55_380_261
end

defmodule Google.Cloud.Compute.V1.BackendServiceConnectionTrackingPolicy.ConnectionPersistenceOnUnhealthyBackends do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CONNECTION_PERSISTENCE_ON_UNHEALTHY_BACKENDS, 0
  field :ALWAYS_PERSIST, 38_400_900
  field :DEFAULT_FOR_PROTOCOL, 145_265_356
  field :NEVER_PERSIST, 138_646_241
end

defmodule Google.Cloud.Compute.V1.BackendServiceConnectionTrackingPolicy.TrackingMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TRACKING_MODE, 0
  field :INVALID_TRACKING_MODE, 49_234_371
  field :PER_CONNECTION, 85_162_848
  field :PER_SESSION, 182_099_252
end

defmodule Google.Cloud.Compute.V1.BackendServiceLocalityLoadBalancingPolicyConfigPolicy.Name do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_NAME, 0
  field :INVALID_LB_POLICY, 323_318_707
  field :LEAST_REQUEST, 46_604_921
  field :MAGLEV, 119_180_266
  field :ORIGINAL_DESTINATION, 166_297_216
  field :RANDOM, 262_527_171
  field :RING_HASH, 432_795_069
  field :ROUND_ROBIN, 153_895_801
end

defmodule Google.Cloud.Compute.V1.BfdPacket.Diagnostic do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_DIAGNOSTIC, 0
  field :ADMINISTRATIVELY_DOWN, 121_685_798
  field :CONCATENATED_PATH_DOWN, 26_186_892
  field :CONTROL_DETECTION_TIME_EXPIRED, 135_478_383
  field :DIAGNOSTIC_UNSPECIFIED, 58_720_895
  field :ECHO_FUNCTION_FAILED, 220_687_466
  field :FORWARDING_PLANE_RESET, 19_715_882
  field :NEIGHBOR_SIGNALED_SESSION_DOWN, 374_226_742
  field :NO_DIAGNOSTIC, 222_503_141
  field :PATH_DOWN, 290_605_180
  field :REVERSE_CONCATENATED_PATH_DOWN, 479_337_129
end

defmodule Google.Cloud.Compute.V1.BfdPacket.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :ADMIN_DOWN, 128_544_690
  field :DOWN, 2_104_482
  field :INIT, 2_252_048
  field :STATE_UNSPECIFIED, 470_755_401
  field :UP, 2715
end

defmodule Google.Cloud.Compute.V1.BfdStatus.BfdSessionInitializationMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_BFD_SESSION_INITIALIZATION_MODE, 0
  field :ACTIVE, 314_733_318
  field :DISABLED, 516_696_700
  field :PASSIVE, 462_813_959
end

defmodule Google.Cloud.Compute.V1.BfdStatus.LocalDiagnostic do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LOCAL_DIAGNOSTIC, 0
  field :ADMINISTRATIVELY_DOWN, 121_685_798
  field :CONCATENATED_PATH_DOWN, 26_186_892
  field :CONTROL_DETECTION_TIME_EXPIRED, 135_478_383
  field :DIAGNOSTIC_UNSPECIFIED, 58_720_895
  field :ECHO_FUNCTION_FAILED, 220_687_466
  field :FORWARDING_PLANE_RESET, 19_715_882
  field :NEIGHBOR_SIGNALED_SESSION_DOWN, 374_226_742
  field :NO_DIAGNOSTIC, 222_503_141
  field :PATH_DOWN, 290_605_180
  field :REVERSE_CONCATENATED_PATH_DOWN, 479_337_129
end

defmodule Google.Cloud.Compute.V1.BfdStatus.LocalState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LOCAL_STATE, 0
  field :ADMIN_DOWN, 128_544_690
  field :DOWN, 2_104_482
  field :INIT, 2_252_048
  field :STATE_UNSPECIFIED, 470_755_401
  field :UP, 2715
end

defmodule Google.Cloud.Compute.V1.Commitment.Category do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CATEGORY, 0
  field :CATEGORY_UNSPECIFIED, 509_189_462
  field :LICENSE, 347_869_217
  field :MACHINE, 469_553_191
end

defmodule Google.Cloud.Compute.V1.Commitment.Plan do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PLAN, 0
  field :INVALID, 530_283_991
  field :THIRTY_SIX_MONTH, 266_295_942
  field :TWELVE_MONTH, 173_083_962
end

defmodule Google.Cloud.Compute.V1.Commitment.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :ACTIVE, 314_733_318
  field :CANCELLED, 41_957_681
  field :CREATING, 455_564_985
  field :EXPIRED, 482_489_093
  field :NOT_YET_ACTIVE, 20_607_337
end

defmodule Google.Cloud.Compute.V1.Commitment.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :ACCELERATOR_OPTIMIZED, 280_848_403
  field :COMPUTE_OPTIMIZED, 158_349_023
  field :COMPUTE_OPTIMIZED_C2D, 383_246_453
  field :GENERAL_PURPOSE, 299_793_543
  field :GENERAL_PURPOSE_E2, 301_911_877
  field :GENERAL_PURPOSE_N2, 301_912_156
  field :GENERAL_PURPOSE_N2D, 232_471_400
  field :GENERAL_PURPOSE_T2D, 232_477_166
  field :MEMORY_OPTIMIZED, 281_753_417
  field :MEMORY_OPTIMIZED_M3, 276_301_372
  field :TYPE_UNSPECIFIED, 437_714_322
end

defmodule Google.Cloud.Compute.V1.Condition.Iam do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_IAM, 0
  field :APPROVER, 357_258_949
  field :ATTRIBUTION, 232_465_503
  field :AUTHORITY, 504_108_835
  field :CREDENTIALS_TYPE, 348_222_141
  field :CREDS_ASSERTION, 332_343_272
  field :JUSTIFICATION_TYPE, 206_147_719
  field :SECURITY_REALM, 526_269_616
end

defmodule Google.Cloud.Compute.V1.Condition.Op do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_OP, 0
  field :DISCHARGED, 266_338_274
  field :EQUALS, 442_201_023
  field :IN, 2341
  field :NOT_EQUALS, 19_718_859
  field :NOT_IN, 161_144_369
  field :NO_OP, 74_481_951
end

defmodule Google.Cloud.Compute.V1.Condition.Sys do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_SYS, 0
  field :IP, 2343
  field :NAME, 2_388_619
  field :REGION, 266_017_524
  field :SERVICE, 17_781_397
end

defmodule Google.Cloud.Compute.V1.DeprecationStatus.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :ACTIVE, 314_733_318
  field :DELETED, 120_962_041
  field :DEPRECATED, 463_360_435
  field :OBSOLETE, 66_532_761
end

defmodule Google.Cloud.Compute.V1.Disk.Architecture do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ARCHITECTURE, 0
  field :ARCHITECTURE_UNSPECIFIED, 394_750_507
  field :ARM64, 62_547_450
  field :X86_64, 425_300_551
end

defmodule Google.Cloud.Compute.V1.Disk.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :CREATING, 455_564_985
  field :DELETING, 528_602_024
  field :FAILED, 455_706_685
  field :READY, 77_848_963
  field :RESTORING, 404_263_851
end

defmodule Google.Cloud.Compute.V1.DiskInstantiationConfig.InstantiateFrom do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_INSTANTIATE_FROM, 0
  field :ATTACH_READ_ONLY, 513_775_419
  field :BLANK, 63_281_460
  field :CUSTOM_IMAGE, 196_311_789
  field :DEFAULT, 115_302_945
  field :DO_NOT_INCLUDE, 104_218_952
  field :SOURCE_IMAGE, 62_631_959
  field :SOURCE_IMAGE_FAMILY, 76_850_316
end

defmodule Google.Cloud.Compute.V1.DistributionPolicy.TargetShape do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TARGET_SHAPE, 0
  field :ANY, 64972
  field :BALANCED, 468_409_608
  field :EVEN, 2_140_442
end

defmodule Google.Cloud.Compute.V1.ExchangedPeeringRoute.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :DYNAMIC_PEERING_ROUTE, 469_794_858
  field :STATIC_PEERING_ROUTE, 473_407_545
  field :SUBNET_PEERING_ROUTE, 465_782_504
end

defmodule Google.Cloud.Compute.V1.ExternalVpnGateway.RedundancyType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_REDUNDANCY_TYPE, 0
  field :FOUR_IPS_REDUNDANCY, 520_087_913
  field :SINGLE_IP_INTERNALLY_REDUNDANT, 133_914_873
  field :TWO_IPS_REDUNDANCY, 367_049_635
end

defmodule Google.Cloud.Compute.V1.FileContentBuffer.FileType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_FILE_TYPE, 0
  field :BIN, 65767
  field :UNDEFINED, 137_851_184
  field :X509, 2_674_086
end

defmodule Google.Cloud.Compute.V1.Firewall.Direction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_DIRECTION, 0
  field :EGRESS, 432_880_501
  field :INGRESS, 516_931_221
end

defmodule Google.Cloud.Compute.V1.FirewallLogConfig.Metadata do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_METADATA, 0
  field :EXCLUDE_ALL_METADATA, 334_519_954
  field :INCLUDE_ALL_METADATA, 164_619_908
end

defmodule Google.Cloud.Compute.V1.FirewallPolicyRule.Direction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_DIRECTION, 0
  field :EGRESS, 432_880_501
  field :INGRESS, 516_931_221
end

defmodule Google.Cloud.Compute.V1.FirewallPolicyRuleSecureTag.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :EFFECTIVE, 244_201_863
  field :INEFFECTIVE, 304_458_242
end

defmodule Google.Cloud.Compute.V1.ForwardingRule.IPProtocolEnum do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_I_P_PROTOCOL_ENUM, 0
  field :AH, 2087
  field :ESP, 68962
  field :ICMP, 2_241_597
  field :L3_DEFAULT, 48_151_369
  field :SCTP, 2_539_724
  field :TCP, 82881
  field :UDP, 83873
end

defmodule Google.Cloud.Compute.V1.ForwardingRule.IpVersion do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_IP_VERSION, 0
  field :IPV4, 2_254_341
  field :IPV6, 2_254_343
  field :UNSPECIFIED_VERSION, 21_850_000
end

defmodule Google.Cloud.Compute.V1.ForwardingRule.LoadBalancingScheme do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LOAD_BALANCING_SCHEME, 0
  field :EXTERNAL, 35_607_499
  field :EXTERNAL_MANAGED, 512_006_923
  field :INTERNAL, 279_295_677
  field :INTERNAL_MANAGED, 37_350_397
  field :INTERNAL_SELF_MANAGED, 236_211_150
  field :INVALID, 530_283_991
end

defmodule Google.Cloud.Compute.V1.ForwardingRule.NetworkTier do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_NETWORK_TIER, 0
  field :FIXED_STANDARD, 310_464_328
  field :PREMIUM, 399_530_551
  field :STANDARD, 484_642_493
  field :STANDARD_OVERRIDES_FIXED_STANDARD, 465_847_234
end

defmodule Google.Cloud.Compute.V1.ForwardingRule.PscConnectionStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PSC_CONNECTION_STATUS, 0
  field :ACCEPTED, 246_714_279
  field :CLOSED, 380_163_436
  field :NEEDS_ATTENTION, 344_491_452
  field :PENDING, 35_394_935
  field :REJECTED, 174_130_302
  field :STATUS_UNSPECIFIED, 42_133_066
end

defmodule Google.Cloud.Compute.V1.GRPCHealthCheck.PortSpecification do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PORT_SPECIFICATION, 0
  field :USE_FIXED_PORT, 190_235_748
  field :USE_NAMED_PORT, 349_300_671
  field :USE_SERVING_PORT, 362_637_516
end

defmodule Google.Cloud.Compute.V1.GuestOsFeature.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :FEATURE_TYPE_UNSPECIFIED, 531_767_259
  field :GVNIC, 68_209_305
  field :MULTI_IP_SUBNET, 151_776_719
  field :SECURE_BOOT, 376_811_194
  field :SEV_CAPABLE, 87_083_793
  field :UEFI_COMPATIBLE, 195_865_408
  field :VIRTIO_SCSI_MULTIQUEUE, 201_597_069
  field :WINDOWS, 456_863_331
end

defmodule Google.Cloud.Compute.V1.HTTP2HealthCheck.PortSpecification do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PORT_SPECIFICATION, 0
  field :USE_FIXED_PORT, 190_235_748
  field :USE_NAMED_PORT, 349_300_671
  field :USE_SERVING_PORT, 362_637_516
end

defmodule Google.Cloud.Compute.V1.HTTP2HealthCheck.ProxyHeader do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROXY_HEADER, 0
  field :NONE, 2_402_104
  field :PROXY_V1, 334_352_940
end

defmodule Google.Cloud.Compute.V1.HTTPHealthCheck.PortSpecification do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PORT_SPECIFICATION, 0
  field :USE_FIXED_PORT, 190_235_748
  field :USE_NAMED_PORT, 349_300_671
  field :USE_SERVING_PORT, 362_637_516
end

defmodule Google.Cloud.Compute.V1.HTTPHealthCheck.ProxyHeader do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROXY_HEADER, 0
  field :NONE, 2_402_104
  field :PROXY_V1, 334_352_940
end

defmodule Google.Cloud.Compute.V1.HTTPSHealthCheck.PortSpecification do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PORT_SPECIFICATION, 0
  field :USE_FIXED_PORT, 190_235_748
  field :USE_NAMED_PORT, 349_300_671
  field :USE_SERVING_PORT, 362_637_516
end

defmodule Google.Cloud.Compute.V1.HTTPSHealthCheck.ProxyHeader do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROXY_HEADER, 0
  field :NONE, 2_402_104
  field :PROXY_V1, 334_352_940
end

defmodule Google.Cloud.Compute.V1.HealthCheck.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :GRPC, 2_196_510
  field :HTTP, 2_228_360
  field :HTTP2, 69_079_210
  field :HTTPS, 69_079_243
  field :INVALID, 530_283_991
  field :SSL, 82412
  field :TCP, 82881
end

defmodule Google.Cloud.Compute.V1.HealthCheckService.HealthStatusAggregationPolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_HEALTH_STATUS_AGGREGATION_POLICY, 0
  field :AND, 64951
  field :NO_AGGREGATION, 426_445_124
end

defmodule Google.Cloud.Compute.V1.HealthStatus.HealthState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_HEALTH_STATE, 0
  field :HEALTHY, 439_801_213
  field :UNHEALTHY, 462_118_084
end

defmodule Google.Cloud.Compute.V1.HealthStatus.WeightError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_WEIGHT_ERROR, 0
  field :INVALID_WEIGHT, 383_698_400
  field :MISSING_WEIGHT, 384_027_537
  field :UNAVAILABLE_WEIGHT, 439_464_295
  field :WEIGHT_NONE, 502_428_831
end

defmodule Google.Cloud.Compute.V1.HealthStatusForNetworkEndpoint.HealthState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_HEALTH_STATE, 0
  field :DRAINING, 480_455_402
  field :HEALTHY, 439_801_213
  field :UNHEALTHY, 462_118_084
  field :UNKNOWN, 433_141_802
end

defmodule Google.Cloud.Compute.V1.HttpRedirectAction.RedirectResponseCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_REDIRECT_RESPONSE_CODE, 0
  field :FOUND, 67_084_130
  field :MOVED_PERMANENTLY_DEFAULT, 386_698_449
  field :PERMANENT_REDIRECT, 382_006_381
  field :SEE_OTHER, 445_380_580
  field :TEMPORARY_REDIRECT, 489_550_378
end

defmodule Google.Cloud.Compute.V1.Image.Architecture do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ARCHITECTURE, 0
  field :ARCHITECTURE_UNSPECIFIED, 394_750_507
  field :ARM64, 62_547_450
  field :X86_64, 425_300_551
end

defmodule Google.Cloud.Compute.V1.Image.SourceType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_SOURCE_TYPE, 0
  field :RAW, 80904
end

defmodule Google.Cloud.Compute.V1.Image.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :DELETING, 528_602_024
  field :FAILED, 455_706_685
  field :PENDING, 35_394_935
  field :READY, 77_848_963
end

defmodule Google.Cloud.Compute.V1.Instance.KeyRevocationActionType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_KEY_REVOCATION_ACTION_TYPE, 0
  field :KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED, 467_110_106
  field :NONE, 2_402_104
  field :STOP, 2_555_906
end

defmodule Google.Cloud.Compute.V1.Instance.PrivateIpv6GoogleAccess do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PRIVATE_IPV6_GOOGLE_ACCESS, 0
  field :ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE, 427_975_994
  field :ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE, 288_210_263
  field :INHERIT_FROM_SUBNETWORK, 530_256_959
end

defmodule Google.Cloud.Compute.V1.Instance.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :DEPROVISIONING, 428_935_662
  field :PROVISIONING, 290_896_621
  field :REPAIRING, 413_483_285
  field :RUNNING, 121_282_975
  field :STAGING, 431_072_283
  field :STOPPED, 444_276_141
  field :STOPPING, 350_791_796
  field :SUSPENDED, 51_223_995
  field :SUSPENDING, 514_206_246
  field :TERMINATED, 250_018_339
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerUpdatePolicy.InstanceRedistributionType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_INSTANCE_REDISTRIBUTION_TYPE, 0
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerUpdatePolicy.MinimalAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MINIMAL_ACTION, 0
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerUpdatePolicy.MostDisruptiveAllowedAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MOST_DISRUPTIVE_ALLOWED_ACTION, 0
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerUpdatePolicy.ReplacementMethod do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_REPLACEMENT_METHOD, 0
  field :RECREATE, 522_644_719
  field :SUBSTITUTE, 280_924_314
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerUpdatePolicy.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :OPPORTUNISTIC, 429_530_089
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersApplyUpdatesRequest.MinimalAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MINIMAL_ACTION, 0
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersApplyUpdatesRequest.MostDisruptiveAllowedAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MOST_DISRUPTIVE_ALLOWED_ACTION, 0
end

defmodule Google.Cloud.Compute.V1.InstanceGroupsListInstancesRequest.InstanceState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_INSTANCE_STATE, 0
  field :ALL, 64897
  field :RUNNING, 121_282_975
end

defmodule Google.Cloud.Compute.V1.InstanceManagedByIgmErrorInstanceActionDetails.Action do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ACTION, 0
  field :ABANDONING, 388_244_813
  field :CREATING, 455_564_985
  field :CREATING_WITHOUT_RETRIES, 428_843_785
  field :DELETING, 528_602_024
  field :NONE, 2_402_104
  field :RECREATING, 287_278_572
  field :REFRESHING, 163_266_343
  field :RESTARTING, 320_534_387
  field :RESUMING, 446_856_618
  field :STARTING, 488_820_800
  field :STOPPING, 350_791_796
  field :SUSPENDING, 514_206_246
  field :VERIFYING, 16_982_185
end

defmodule Google.Cloud.Compute.V1.InstanceProperties.KeyRevocationActionType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_KEY_REVOCATION_ACTION_TYPE, 0
  field :KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED, 467_110_106
  field :NONE, 2_402_104
  field :STOP, 2_555_906
end

defmodule Google.Cloud.Compute.V1.InstanceProperties.PrivateIpv6GoogleAccess do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PRIVATE_IPV6_GOOGLE_ACCESS, 0
  field :ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE, 427_975_994
  field :ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE, 288_210_263
  field :INHERIT_FROM_SUBNETWORK, 530_256_959
end

defmodule Google.Cloud.Compute.V1.InstanceWithNamedPorts.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :DEPROVISIONING, 428_935_662
  field :PROVISIONING, 290_896_621
  field :REPAIRING, 413_483_285
  field :RUNNING, 121_282_975
  field :STAGING, 431_072_283
  field :STOPPED, 444_276_141
  field :STOPPING, 350_791_796
  field :SUSPENDED, 51_223_995
  field :SUSPENDING, 514_206_246
  field :TERMINATED, 250_018_339
end

defmodule Google.Cloud.Compute.V1.InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :HIERARCHY, 69_902_869
  field :NETWORK, 413_984_270
  field :NETWORK_REGIONAL, 190_804_272
  field :UNSPECIFIED, 526_786_327
end

defmodule Google.Cloud.Compute.V1.Interconnect.InterconnectType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_INTERCONNECT_TYPE, 0
  field :DEDICATED, 258_411_983
  field :IT_PRIVATE, 335_677_007
  field :PARTNER, 461_924_520
end

defmodule Google.Cloud.Compute.V1.Interconnect.LinkType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LINK_TYPE, 0
  field :LINK_TYPE_ETHERNET_100G_LR, 337_672_551
  field :LINK_TYPE_ETHERNET_10G_LR, 236_739_749
end

defmodule Google.Cloud.Compute.V1.Interconnect.OperationalStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_OPERATIONAL_STATUS, 0
  field :OS_ACTIVE, 55_721_409
  field :OS_UNPROVISIONED, 239_771_840
end

defmodule Google.Cloud.Compute.V1.Interconnect.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :ACTIVE, 314_733_318
  field :UNPROVISIONED, 517_333_979
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachment.Bandwidth do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_BANDWIDTH, 0
  field :BPS_100M, 49_547_958
  field :BPS_10G, 278_693_006
  field :BPS_1G, 355_358_448
  field :BPS_200M, 49_577_749
  field :BPS_20G, 278_693_967
  field :BPS_2G, 355_358_479
  field :BPS_300M, 49_607_540
  field :BPS_400M, 49_637_331
  field :BPS_500M, 49_667_122
  field :BPS_50G, 278_696_850
  field :BPS_50M, 278_696_856
  field :BPS_5G, 355_358_572
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachment.EdgeAvailabilityDomain do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_EDGE_AVAILABILITY_DOMAIN, 0
  field :AVAILABILITY_DOMAIN_1, 349_552_090
  field :AVAILABILITY_DOMAIN_2, 349_552_091
  field :AVAILABILITY_DOMAIN_ANY, 375_256_373
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachment.Encryption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ENCRYPTION, 0
  field :IPSEC, 69_882_282
  field :NONE, 2_402_104
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachment.OperationalStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_OPERATIONAL_STATUS, 0
  field :OS_ACTIVE, 55_721_409
  field :OS_UNPROVISIONED, 239_771_840
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachment.StackType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STACK_TYPE, 0
  field :IPV4_IPV6, 22_197_249
  field :IPV4_ONLY, 22_373_798
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachment.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :ACTIVE, 314_733_318
  field :DEFUNCT, 115_891_759
  field :PARTNER_REQUEST_RECEIVED, 513_587_304
  field :PENDING_CUSTOMER, 167_494_054
  field :PENDING_PARTNER, 387_890_656
  field :STATE_UNSPECIFIED, 470_755_401
  field :UNPROVISIONED, 517_333_979
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachment.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :DEDICATED, 258_411_983
  field :PARTNER, 461_924_520
  field :PARTNER_PROVIDER, 483_261_352
end

defmodule Google.Cloud.Compute.V1.InterconnectDiagnosticsLinkLACPStatus.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :ACTIVE, 314_733_318
  field :DETACHED, 216_562_546
end

defmodule Google.Cloud.Compute.V1.InterconnectDiagnosticsLinkOpticalPower.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :HIGH_ALARM, 305_363_284
  field :HIGH_WARNING, 220_984_799
  field :LOW_ALARM, 316_659_046
  field :LOW_WARNING, 338_793_841
  field :OK, 2524
end

defmodule Google.Cloud.Compute.V1.InterconnectLocation.Continent do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CONTINENT, 0
  field :AFRICA, 317_443_706
  field :ASIA_PAC, 119_782_269
  field :C_AFRICA, 71_993_846
  field :C_ASIA_PAC, 465_668_089
  field :C_EUROPE, 200_369_438
  field :C_NORTH_AMERICA, 275_697_048
  field :C_SOUTH_AMERICA, 397_149_792
  field :EUROPE, 445_819_298
  field :NORTH_AMERICA, 448_015_508
  field :SOUTH_AMERICA, 32_597_340
end

defmodule Google.Cloud.Compute.V1.InterconnectLocation.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :AVAILABLE, 442_079_913
  field :CLOSED, 380_163_436
end

defmodule Google.Cloud.Compute.V1.InterconnectLocationRegionInfo.LocationPresence do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LOCATION_PRESENCE, 0
  field :GLOBAL, 494_663_587
  field :LOCAL_REGION, 403_535_464
  field :LP_GLOBAL, 429_584_062
  field :LP_LOCAL_REGION, 488_598_851
end

defmodule Google.Cloud.Compute.V1.InterconnectOutageNotification.IssueType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ISSUE_TYPE, 0
  field :IT_OUTAGE, 175_779_973
  field :IT_PARTIAL_OUTAGE, 92_103_971
  field :OUTAGE, 195_285_745
  field :PARTIAL_OUTAGE, 147_053_455
end

defmodule Google.Cloud.Compute.V1.InterconnectOutageNotification.Source do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_SOURCE, 0
  field :GOOGLE, 497_439_289
  field :NSRC_GOOGLE, 510_574_562
end

defmodule Google.Cloud.Compute.V1.InterconnectOutageNotification.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :ACTIVE, 314_733_318
  field :CANCELLED, 41_957_681
  field :COMPLETED, 309_921_323
  field :NS_ACTIVE, 252_563_136
  field :NS_CANCELED, 506_579_411
end

defmodule Google.Cloud.Compute.V1.LicenseCode.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :DISABLED, 516_696_700
  field :ENABLED, 182_130_465
  field :RESTRICTED, 261_551_195
  field :STATE_UNSPECIFIED, 470_755_401
  field :TERMINATED, 250_018_339
end

defmodule Google.Cloud.Compute.V1.ListPeeringRoutesNetworksRequest.Direction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_DIRECTION, 0
  field :INCOMING, 338_552_870
  field :OUTGOING, 307_438_444
end

defmodule Google.Cloud.Compute.V1.LocationPolicy.TargetShape do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TARGET_SHAPE, 0
  field :ANY, 64972
  field :ANY_SINGLE_ZONE, 61_100_880
  field :BALANCED, 468_409_608
end

defmodule Google.Cloud.Compute.V1.LocationPolicyLocation.Preference do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PREFERENCE, 0
  field :ALLOW, 62_368_553
  field :DENY, 2_094_604
  field :PREFERENCE_UNSPECIFIED, 496_219_571
end

defmodule Google.Cloud.Compute.V1.LogConfigCloudAuditOptions.LogName do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LOG_NAME, 0
  field :ADMIN_ACTIVITY, 427_503_135
  field :DATA_ACCESS, 238_070_681
  field :UNSPECIFIED_LOG_NAME, 410_515_182
end

defmodule Google.Cloud.Compute.V1.LogConfigDataAccessOptions.LogMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LOG_MODE, 0
  field :LOG_FAIL_CLOSED, 360_469_778
  field :LOG_MODE_UNSPECIFIED, 88_160_822
end

defmodule Google.Cloud.Compute.V1.MachineImage.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :CREATING, 455_564_985
  field :DELETING, 528_602_024
  field :INVALID, 530_283_991
  field :READY, 77_848_963
  field :UPLOADING, 267_603_489
end

defmodule Google.Cloud.Compute.V1.ManagedInstance.CurrentAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CURRENT_ACTION, 0
  field :ABANDONING, 388_244_813
  field :CREATING, 455_564_985
  field :CREATING_WITHOUT_RETRIES, 428_843_785
  field :DELETING, 528_602_024
  field :NONE, 2_402_104
  field :RECREATING, 287_278_572
  field :REFRESHING, 163_266_343
  field :RESTARTING, 320_534_387
  field :RESUMING, 446_856_618
  field :STARTING, 488_820_800
  field :VERIFYING, 16_982_185
end

defmodule Google.Cloud.Compute.V1.ManagedInstance.InstanceStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_INSTANCE_STATUS, 0
  field :DEPROVISIONING, 428_935_662
  field :PROVISIONING, 290_896_621
  field :REPAIRING, 413_483_285
  field :RUNNING, 121_282_975
  field :STAGING, 431_072_283
  field :STOPPED, 444_276_141
  field :STOPPING, 350_791_796
  field :SUSPENDED, 51_223_995
  field :SUSPENDING, 514_206_246
  field :TERMINATED, 250_018_339
end

defmodule Google.Cloud.Compute.V1.ManagedInstanceInstanceHealth.DetailedHealthState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_DETAILED_HEALTH_STATE, 0
  field :DRAINING, 480_455_402
  field :HEALTHY, 439_801_213
  field :TIMEOUT, 477_813_057
  field :UNHEALTHY, 462_118_084
  field :UNKNOWN, 433_141_802
end

defmodule Google.Cloud.Compute.V1.MetadataFilter.FilterMatchCriteria do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_FILTER_MATCH_CRITERIA, 0
  field :MATCH_ALL, 180_663_271
  field :MATCH_ANY, 180_663_346
  field :NOT_SET, 163_646_646
end

defmodule Google.Cloud.Compute.V1.Network.NetworkFirewallPolicyEnforcementOrder do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_NETWORK_FIREWALL_POLICY_ENFORCEMENT_ORDER, 0
  field :AFTER_CLASSIC_FIREWALL, 154_582_608
  field :BEFORE_CLASSIC_FIREWALL, 338_458_349
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroup.NetworkEndpointType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_NETWORK_ENDPOINT_TYPE, 0
  field :GCE_VM_IP, 401_880_793
  field :GCE_VM_IP_PORT, 501_838_375
  field :INTERNET_FQDN_PORT, 404_154_477
  field :INTERNET_IP_PORT, 477_719_963
  field :NON_GCP_PRIVATE_IP_PORT, 336_447_968
  field :PRIVATE_SERVICE_CONNECT, 48_134_724
  field :SERVERLESS, 270_492_508
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupsListEndpointsRequest.HealthStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_HEALTH_STATUS, 0
  field :SHOW, 2_544_381
  field :SKIP, 2_547_071
end

defmodule Google.Cloud.Compute.V1.NetworkInterface.Ipv6AccessType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_IPV6_ACCESS_TYPE, 0
  field :EXTERNAL, 35_607_499
  field :INTERNAL, 279_295_677
  field :UNSPECIFIED_IPV6_ACCESS_TYPE, 313_080_613
end

defmodule Google.Cloud.Compute.V1.NetworkInterface.NicType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_NIC_TYPE, 0
  field :GVNIC, 68_209_305
  field :UNSPECIFIED_NIC_TYPE, 67_411_801
  field :VIRTIO_NET, 452_123_481
end

defmodule Google.Cloud.Compute.V1.NetworkInterface.StackType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STACK_TYPE, 0
  field :IPV4_IPV6, 22_197_249
  field :IPV4_ONLY, 22_373_798
  field :UNSPECIFIED_STACK_TYPE, 298_084_569
end

defmodule Google.Cloud.Compute.V1.NetworkPeering.StackType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STACK_TYPE, 0
  field :IPV4_IPV6, 22_197_249
  field :IPV4_ONLY, 22_373_798
end

defmodule Google.Cloud.Compute.V1.NetworkPeering.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :ACTIVE, 314_733_318
  field :INACTIVE, 270_421_099
end

defmodule Google.Cloud.Compute.V1.NetworkPerformanceConfig.TotalEgressBandwidthTier do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TOTAL_EGRESS_BANDWIDTH_TIER, 0
  field :DEFAULT, 115_302_945
  field :TIER_1, 326_919_444
end

defmodule Google.Cloud.Compute.V1.NetworkRoutingConfig.RoutingMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ROUTING_MODE, 0
  field :GLOBAL, 494_663_587
  field :REGIONAL, 92_288_543
end

defmodule Google.Cloud.Compute.V1.NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :HIERARCHY, 69_902_869
  field :NETWORK, 413_984_270
  field :UNSPECIFIED, 526_786_327
end

defmodule Google.Cloud.Compute.V1.NodeGroup.MaintenancePolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MAINTENANCE_POLICY, 0
  field :DEFAULT, 115_302_945
  field :MAINTENANCE_POLICY_UNSPECIFIED, 72_964_182
  field :MIGRATE_WITHIN_NODE_GROUP, 153_483_394
  field :RESTART_IN_PLACE, 228_647_325
end

defmodule Google.Cloud.Compute.V1.NodeGroup.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :CREATING, 455_564_985
  field :DELETING, 528_602_024
  field :INVALID, 530_283_991
  field :READY, 77_848_963
end

defmodule Google.Cloud.Compute.V1.NodeGroupAutoscalingPolicy.Mode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MODE, 0
  field :MODE_UNSPECIFIED, 371_348_091
  field :OFF, 78159
  field :ON, 2527
  field :ONLY_SCALE_OUT, 152_713_670
end

defmodule Google.Cloud.Compute.V1.NodeGroupNode.CpuOvercommitType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CPU_OVERCOMMIT_TYPE, 0
  field :CPU_OVERCOMMIT_TYPE_UNSPECIFIED, 520_665_615
  field :ENABLED, 182_130_465
  field :NONE, 2_402_104
end

defmodule Google.Cloud.Compute.V1.NodeGroupNode.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :CREATING, 455_564_985
  field :DELETING, 528_602_024
  field :INVALID, 530_283_991
  field :READY, 77_848_963
  field :REPAIRING, 413_483_285
end

defmodule Google.Cloud.Compute.V1.NodeTemplate.CpuOvercommitType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CPU_OVERCOMMIT_TYPE, 0
  field :CPU_OVERCOMMIT_TYPE_UNSPECIFIED, 520_665_615
  field :ENABLED, 182_130_465
  field :NONE, 2_402_104
end

defmodule Google.Cloud.Compute.V1.NodeTemplate.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :CREATING, 455_564_985
  field :DELETING, 528_602_024
  field :INVALID, 530_283_991
  field :READY, 77_848_963
end

defmodule Google.Cloud.Compute.V1.Operation.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :DONE, 2_104_194
  field :PENDING, 35_394_935
  field :RUNNING, 121_282_975
end

defmodule Google.Cloud.Compute.V1.PacketIntervals.Duration do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_DURATION, 0
  field :DURATION_UNSPECIFIED, 529_071_340
  field :HOUR, 2_223_588
  field :MAX, 76100
  field :MINUTE, 126_786_068
end

defmodule Google.Cloud.Compute.V1.PacketIntervals.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :LOOPBACK, 356_174_219
  field :RECEIVE, 189_660_867
  field :TRANSMIT, 452_903_600
  field :TYPE_UNSPECIFIED, 437_714_322
end

defmodule Google.Cloud.Compute.V1.PacketMirroring.Enable do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ENABLE, 0
  field :FALSE, 66_658_563
  field :TRUE, 2_583_950
end

defmodule Google.Cloud.Compute.V1.PacketMirroringFilter.Direction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_DIRECTION, 0
  field :BOTH, 2_044_801
  field :EGRESS, 432_880_501
  field :INGRESS, 516_931_221
end

defmodule Google.Cloud.Compute.V1.PerInstanceConfig.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :APPLYING, 352_003_508
  field :DELETING, 528_602_024
  field :EFFECTIVE, 244_201_863
  field :NONE, 2_402_104
  field :UNAPPLIED, 483_935_140
  field :UNAPPLIED_DELETION, 313_956_873
end

defmodule Google.Cloud.Compute.V1.PreservedStatePreservedDisk.AutoDelete do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_AUTO_DELETE, 0
  field :NEVER, 74_175_084
  field :ON_PERMANENT_INSTANCE_DELETION, 95_727_719
end

defmodule Google.Cloud.Compute.V1.PreservedStatePreservedDisk.Mode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MODE, 0
  field :READ_ONLY, 91_950_261
  field :READ_WRITE, 173_607_894
end

defmodule Google.Cloud.Compute.V1.Project.DefaultNetworkTier do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_DEFAULT_NETWORK_TIER, 0
  field :FIXED_STANDARD, 310_464_328
  field :PREMIUM, 399_530_551
  field :STANDARD, 484_642_493
  field :STANDARD_OVERRIDES_FIXED_STANDARD, 465_847_234
end

defmodule Google.Cloud.Compute.V1.Project.XpnProjectStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_XPN_PROJECT_STATUS, 0
  field :HOST, 2_223_528
  field :UNSPECIFIED_XPN_PROJECT_STATUS, 340_393_257
end

defmodule Google.Cloud.Compute.V1.ProjectsSetDefaultNetworkTierRequest.NetworkTier do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_NETWORK_TIER, 0
  field :FIXED_STANDARD, 310_464_328
  field :PREMIUM, 399_530_551
  field :STANDARD, 484_642_493
  field :STANDARD_OVERRIDES_FIXED_STANDARD, 465_847_234
end

defmodule Google.Cloud.Compute.V1.PublicAdvertisedPrefix.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :INITIAL, 518_841_124
  field :PREFIX_CONFIGURATION_COMPLETE, 480_889_551
  field :PREFIX_CONFIGURATION_IN_PROGRESS, 378_550_961
  field :PREFIX_REMOVAL_IN_PROGRESS, 284_375_783
  field :PTR_CONFIGURED, 513_497_167
  field :REVERSE_DNS_LOOKUP_FAILED, 295_755_183
  field :VALIDATED, 66_197_998
end

defmodule Google.Cloud.Compute.V1.PublicDelegatedPrefix.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :ANNOUNCED, 365_103_355
  field :DELETING, 528_602_024
  field :INITIALIZING, 306_588_749
  field :READY_TO_ANNOUNCE, 64_641_265
end

defmodule Google.Cloud.Compute.V1.PublicDelegatedPrefixPublicDelegatedSubPrefix.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :ACTIVE, 314_733_318
  field :INACTIVE, 270_421_099
end

defmodule Google.Cloud.Compute.V1.Quota.Metric do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_METRIC, 0
  field :A2_CPUS, 153_206_585
  field :AFFINITY_GROUPS, 108_303_563
  field :AUTOSCALERS, 471_248_988
  field :BACKEND_BUCKETS, 137_626_846
  field :BACKEND_SERVICES, 269_623_753
  field :C2D_CPUS, 508_182_517
  field :C2_CPUS, 317_601_211
  field :C3_CPUS, 346_230_362
  field :COMMITMENTS, 456_141_790
  field :COMMITTED_A2_CPUS, 59_330_902
  field :COMMITTED_C2D_CPUS, 282_390_904
  field :COMMITTED_C2_CPUS, 223_725_528
  field :COMMITTED_C3_CPUS, 252_354_679
  field :COMMITTED_CPUS, 292_394_702
  field :COMMITTED_E2_CPUS, 388_120_154
  field :COMMITTED_LICENSES, 357_606_869
  field :COMMITTED_LOCAL_SSD_TOTAL_GB, 308_393_480
  field :COMMITTED_M3_CPUS, 585_985
  field :COMMITTED_MEMORY_OPTIMIZED_CPUS, 489_057_886
  field :COMMITTED_N2A_CPUS, 40_064_304
  field :COMMITTED_N2D_CPUS, 125_951_757
  field :COMMITTED_N2_CPUS, 322_589_603
  field :COMMITTED_NVIDIA_A100_80GB_GPUS, 464_326_565
  field :COMMITTED_NVIDIA_A100_GPUS, 375_799_445
  field :COMMITTED_NVIDIA_K80_GPUS, 3_857_188
  field :COMMITTED_NVIDIA_P100_GPUS, 107_528_100
  field :COMMITTED_NVIDIA_P4_GPUS, 347_952_897
  field :COMMITTED_NVIDIA_T4_GPUS, 139_871_237
  field :COMMITTED_NVIDIA_V100_GPUS, 219_562
  field :COMMITTED_T2A_CPUS, 296_378_986
  field :COMMITTED_T2D_CPUS, 382_266_439
  field :CPUS, 2_075_595
  field :CPUS_ALL_REGIONS, 470_911_149
  field :DISKS_TOTAL_GB, 353_520_543
  field :E2_CPUS, 481_995_837
  field :EXTERNAL_MANAGED_FORWARDING_RULES, 150_790_089
  field :EXTERNAL_NETWORK_LB_FORWARDING_RULES, 374_298_265
  field :EXTERNAL_PROTOCOL_FORWARDING_RULES, 63_478_888
  field :EXTERNAL_VPN_GATEWAYS, 272_457_134
  field :FIREWALLS, 374_485_843
  field :FORWARDING_RULES, 432_668_949
  field :GLOBAL_EXTERNAL_MANAGED_FORWARDING_RULES, 327_611_949
  field :GLOBAL_INTERNAL_ADDRESSES, 42_738_332
  field :GPUS_ALL_REGIONS, 39_387_177
  field :HEALTH_CHECKS, 289_347_502
  field :IMAGES, 15_562_360
  field :INSTANCES, 131_337_822
  field :INSTANCE_GROUPS, 355_919_038
  field :INSTANCE_GROUP_MANAGERS, 101_798_192
  field :INSTANCE_TEMPLATES, 226_188_271
  field :INTERCONNECTS, 415_204_741
  field :INTERCONNECT_ATTACHMENTS_PER_REGION, 159_968_086
  field :INTERCONNECT_ATTACHMENTS_TOTAL_MBPS, 425_090_419
  field :INTERCONNECT_TOTAL_GBPS, 285_341_866
  field :INTERNAL_ADDRESSES, 197_899_392
  field :INTERNAL_TRAFFIC_DIRECTOR_FORWARDING_RULES, 266_433_668
  field :IN_PLACE_SNAPSHOTS, 151_359_133
  field :IN_USE_ADDRESSES, 402_125_072
  field :IN_USE_BACKUP_SCHEDULES, 32_786_705
  field :IN_USE_SNAPSHOT_SCHEDULES, 462_104_083
  field :LOCAL_SSD_TOTAL_GB, 330_878_021
  field :M1_CPUS, 37_203_366
  field :M2_CPUS, 65_832_517
  field :M3_CPUS, 94_461_668
  field :MACHINE_IMAGES, 446_986_640
  field :N2A_CPUS, 265_855_917
  field :N2D_CPUS, 351_743_370
  field :N2_CPUS, 416_465_286
  field :NETWORKS, 485_481_477
  field :NETWORK_ENDPOINT_GROUPS, 102_144_909
  field :NETWORK_FIREWALL_POLICIES, 101_117_374
  field :NODE_GROUPS, 24_624_817
  field :NODE_TEMPLATES, 474_896_668
  field :NVIDIA_A100_80GB_GPUS, 286_389_320
  field :NVIDIA_A100_GPUS, 504_872_978
  field :NVIDIA_K80_GPUS, 163_886_599
  field :NVIDIA_P100_GPUS, 236_601_633
  field :NVIDIA_P100_VWS_GPUS, 213_970_574
  field :NVIDIA_P4_GPUS, 283_841_470
  field :NVIDIA_P4_VWS_GPUS, 528_296_619
  field :NVIDIA_T4_GPUS, 75_759_810
  field :NVIDIA_T4_VWS_GPUS, 319_813_039
  field :NVIDIA_V100_GPUS, 129_293_095
  field :PACKET_MIRRORINGS, 15_578_407
  field :PD_EXTREME_TOTAL_PROVISIONED_IOPS, 69_593_965
  field :PREEMPTIBLE_CPUS, 251_184_841
  field :PREEMPTIBLE_LOCAL_SSD_GB, 260_819_336
  field :PREEMPTIBLE_NVIDIA_A100_80GB_GPUS, 151_942_410
  field :PREEMPTIBLE_NVIDIA_A100_GPUS, 68_832_784
  field :PREEMPTIBLE_NVIDIA_K80_GPUS, 374_960_201
  field :PREEMPTIBLE_NVIDIA_P100_GPUS, 337_432_351
  field :PREEMPTIBLE_NVIDIA_P100_VWS_GPUS, 313_544_076
  field :PREEMPTIBLE_NVIDIA_P4_GPUS, 429_197_628
  field :PREEMPTIBLE_NVIDIA_P4_VWS_GPUS, 252_981_545
  field :PREEMPTIBLE_NVIDIA_T4_GPUS, 221_115_968
  field :PREEMPTIBLE_NVIDIA_T4_VWS_GPUS, 44_497_965
  field :PREEMPTIBLE_NVIDIA_V100_GPUS, 230_123_813
  field :PSC_ILB_CONSUMER_FORWARDING_RULES_PER_PRODUCER_NETWORK, 231_164_291
  field :PSC_INTERNAL_LB_FORWARDING_RULES, 169_005_435
  field :PUBLIC_ADVERTISED_PREFIXES, 471_371_980
  field :PUBLIC_DELEGATED_PREFIXES, 532_465_974
  field :REGIONAL_AUTOSCALERS, 29_363_772
  field :REGIONAL_INSTANCE_GROUP_MANAGERS, 37_543_696
  field :RESERVATIONS, 32_644_647
  field :RESOURCE_POLICIES, 83_955_297
  field :ROUTERS, 493_018_666
  field :ROUTES, 275_680_074
  field :SECURITY_POLICIES, 189_518_703
  field :SECURITY_POLICIES_PER_REGION, 249_041_734
  field :SECURITY_POLICY_CEVAL_RULES, 470_815_689
  field :SECURITY_POLICY_RULES, 203_549_225
  field :SECURITY_POLICY_RULES_PER_REGION, 126_510_156
  field :SERVICE_ATTACHMENTS, 471_521_510
  field :SNAPSHOTS, 343_405_327
  field :SSD_TOTAL_GB, 161_732_561
  field :SSL_CERTIFICATES, 378_372_399
  field :STATIC_ADDRESSES, 93_624_049
  field :STATIC_BYOIP_ADDRESSES, 275_809_649
  field :SUBNETWORKS, 421_330_469
  field :T2A_CPUS, 522_170_599
  field :T2D_CPUS, 71_187_140
  field :TARGET_HTTPS_PROXIES, 219_522_506
  field :TARGET_HTTP_PROXIES, 164_117_155
  field :TARGET_INSTANCES, 284_519_728
  field :TARGET_POOLS, 348_261_257
  field :TARGET_SSL_PROXIES, 159_216_235
  field :TARGET_TCP_PROXIES, 182_243_136
  field :TARGET_VPN_GATEWAYS, 75_029_928
  field :URL_MAPS, 378_660_743
  field :VPN_GATEWAYS, 35_620_282
  field :VPN_TUNNELS, 104_327_296
  field :XPN_SERVICE_PROJECTS, 95_191_981
end

defmodule Google.Cloud.Compute.V1.RawDisk.ContainerType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CONTAINER_TYPE, 0
  field :TAR, 82821
end

defmodule Google.Cloud.Compute.V1.Region.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :DOWN, 2_104_482
  field :UP, 2715
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersApplyUpdatesRequest.MinimalAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MINIMAL_ACTION, 0
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersApplyUpdatesRequest.MostDisruptiveAllowedAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MOST_DISRUPTIVE_ALLOWED_ACTION, 0
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupsListInstancesRequest.InstanceState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_INSTANCE_STATE, 0
  field :ALL, 64897
  field :RUNNING, 121_282_975
end

defmodule Google.Cloud.Compute.V1.RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :HIERARCHY, 69_902_869
  field :NETWORK, 413_984_270
  field :NETWORK_REGIONAL, 190_804_272
  field :UNSPECIFIED, 526_786_327
end

defmodule Google.Cloud.Compute.V1.Reservation.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :CREATING, 455_564_985
  field :DELETING, 528_602_024
  field :INVALID, 530_283_991
  field :READY, 77_848_963
  field :UPDATING, 494_614_342
end

defmodule Google.Cloud.Compute.V1.ReservationAffinity.ConsumeReservationType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CONSUME_RESERVATION_TYPE, 0
  field :ANY_RESERVATION, 200_008_121
  field :NO_RESERVATION, 169_322_030
  field :SPECIFIC_RESERVATION, 229_889_055
  field :UNSPECIFIED, 526_786_327
end

defmodule Google.Cloud.Compute.V1.ResourceCommitment.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :ACCELERATOR, 429_815_371
  field :LOCAL_SSD, 508_934_896
  field :MEMORY, 123_056_385
  field :UNSPECIFIED, 526_786_327
  field :VCPU, 2_628_978
end

defmodule Google.Cloud.Compute.V1.ResourcePolicy.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :CREATING, 455_564_985
  field :DELETING, 528_602_024
  field :EXPIRED, 482_489_093
  field :INVALID, 530_283_991
  field :READY, 77_848_963
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyGroupPlacementPolicy.Collocation do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_COLLOCATION, 0
  field :COLLOCATED, 103_257_554
  field :UNSPECIFIED_COLLOCATION, 464_308_205
end

defmodule Google.Cloud.Compute.V1.ResourcePolicySnapshotSchedulePolicyRetentionPolicy.OnSourceDiskDelete do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ON_SOURCE_DISK_DELETE, 0
  field :APPLY_RETENTION_POLICY, 535_071_332
  field :KEEP_AUTO_SNAPSHOTS, 258_925_689
  field :UNSPECIFIED_ON_SOURCE_DISK_DELETE, 239_140_769
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyWeeklyCycleDayOfWeek.Day do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_DAY, 0
  field :FRIDAY, 471_398_751
  field :INVALID, 530_283_991
  field :MONDAY, 132_310_288
  field :SATURDAY, 279_037_881
  field :SUNDAY, 309_626_320
  field :THURSDAY, 207_198_682
  field :TUESDAY, 277_509_677
  field :WEDNESDAY, 422_029_110
end

defmodule Google.Cloud.Compute.V1.Route.RouteStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ROUTE_STATUS, 0
  field :ACTIVE, 314_733_318
  field :DROPPED, 496_235_424
  field :INACTIVE, 270_421_099
  field :PENDING, 35_394_935
end

defmodule Google.Cloud.Compute.V1.Route.RouteType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ROUTE_TYPE, 0
  field :BGP, 65707
  field :STATIC, 308_331_118
  field :SUBNET, 309_278_557
  field :TRANSIT, 187_793_843
end

defmodule Google.Cloud.Compute.V1.RouteAsPath.PathSegmentType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PATH_SEGMENT_TYPE, 0
  field :AS_CONFED_SEQUENCE, 222_152_624
  field :AS_CONFED_SET, 374_040_307
  field :AS_SEQUENCE, 106_735_918
  field :AS_SET, 329_846_453
end

defmodule Google.Cloud.Compute.V1.RouterBgp.AdvertiseMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ADVERTISE_MODE, 0
  field :CUSTOM, 388_595_569
  field :DEFAULT, 115_302_945
end

defmodule Google.Cloud.Compute.V1.RouterBgp.AdvertisedGroups do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ADVERTISED_GROUPS, 0
  field :ALL_SUBNETS, 3_622_872
end

defmodule Google.Cloud.Compute.V1.RouterBgpPeer.AdvertiseMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ADVERTISE_MODE, 0
  field :CUSTOM, 388_595_569
  field :DEFAULT, 115_302_945
end

defmodule Google.Cloud.Compute.V1.RouterBgpPeer.AdvertisedGroups do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ADVERTISED_GROUPS, 0
  field :ALL_SUBNETS, 3_622_872
end

defmodule Google.Cloud.Compute.V1.RouterBgpPeer.Enable do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ENABLE, 0
  field :FALSE, 66_658_563
  field :TRUE, 2_583_950
end

defmodule Google.Cloud.Compute.V1.RouterBgpPeer.ManagementType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MANAGEMENT_TYPE, 0
  field :MANAGED_BY_ATTACHMENT, 458_926_411
  field :MANAGED_BY_USER, 317_294_067
end

defmodule Google.Cloud.Compute.V1.RouterBgpPeerBfd.SessionInitializationMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_SESSION_INITIALIZATION_MODE, 0
  field :ACTIVE, 314_733_318
  field :DISABLED, 516_696_700
  field :PASSIVE, 462_813_959
end

defmodule Google.Cloud.Compute.V1.RouterInterface.ManagementType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MANAGEMENT_TYPE, 0
  field :MANAGED_BY_ATTACHMENT, 458_926_411
  field :MANAGED_BY_USER, 317_294_067
end

defmodule Google.Cloud.Compute.V1.RouterNat.EndpointTypes do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ENDPOINT_TYPES, 0
  field :ENDPOINT_TYPE_SWG, 159_344_456
  field :ENDPOINT_TYPE_VM, 57_095_474
end

defmodule Google.Cloud.Compute.V1.RouterNat.NatIpAllocateOption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_NAT_IP_ALLOCATE_OPTION, 0
  field :AUTO_ONLY, 182_333_500
  field :MANUAL_ONLY, 261_251_205
end

defmodule Google.Cloud.Compute.V1.RouterNat.SourceSubnetworkIpRangesToNat do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_SOURCE_SUBNETWORK_IP_RANGES_TO_NAT, 0
  field :ALL_SUBNETWORKS_ALL_IP_RANGES, 179_964_376
  field :ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, 185_573_819
  field :LIST_OF_SUBNETWORKS, 517_542_270
end

defmodule Google.Cloud.Compute.V1.RouterNatLogConfig.Filter do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_FILTER, 0
  field :ALL, 64897
  field :ERRORS_ONLY, 307_484_672
  field :TRANSLATIONS_ONLY, 357_212_649
end

defmodule Google.Cloud.Compute.V1.RouterNatSubnetworkToNat.SourceIpRangesToNat do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_SOURCE_IP_RANGES_TO_NAT, 0
  field :ALL_IP_RANGES, 35_608_496
  field :LIST_OF_SECONDARY_IP_RANGES, 192_289_308
  field :PRIMARY_IP_RANGE, 297_109_954
end

defmodule Google.Cloud.Compute.V1.RouterStatusBgpPeerStatus.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :DOWN, 2_104_482
  field :UNKNOWN, 433_141_802
  field :UP, 2715
end

defmodule Google.Cloud.Compute.V1.Rule.Action do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ACTION, 0
  field :ALLOW, 62_368_553
  field :ALLOW_WITH_LOG, 76_034_177
  field :DENY, 2_094_604
  field :DENY_WITH_LOG, 351_433_982
  field :LOG, 75556
  field :NO_ACTION, 260_643_444
end

defmodule Google.Cloud.Compute.V1.SSLHealthCheck.PortSpecification do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PORT_SPECIFICATION, 0
  field :USE_FIXED_PORT, 190_235_748
  field :USE_NAMED_PORT, 349_300_671
  field :USE_SERVING_PORT, 362_637_516
end

defmodule Google.Cloud.Compute.V1.SSLHealthCheck.ProxyHeader do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROXY_HEADER, 0
  field :NONE, 2_402_104
  field :PROXY_V1, 334_352_940
end

defmodule Google.Cloud.Compute.V1.SavedAttachedDisk.Interface do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_INTERFACE, 0
  field :NVME, 2_408_800
  field :SCSI, 2_539_686
end

defmodule Google.Cloud.Compute.V1.SavedAttachedDisk.Mode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MODE, 0
  field :READ_ONLY, 91_950_261
  field :READ_WRITE, 173_607_894
end

defmodule Google.Cloud.Compute.V1.SavedAttachedDisk.StorageBytesStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STORAGE_BYTES_STATUS, 0
  field :UPDATING, 494_614_342
  field :UP_TO_DATE, 101_306_702
end

defmodule Google.Cloud.Compute.V1.SavedAttachedDisk.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :PERSISTENT, 460_683_927
  field :SCRATCH, 496_778_970
end

defmodule Google.Cloud.Compute.V1.SavedDisk.Architecture do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ARCHITECTURE, 0
  field :ARCHITECTURE_UNSPECIFIED, 394_750_507
  field :ARM64, 62_547_450
  field :X86_64, 425_300_551
end

defmodule Google.Cloud.Compute.V1.SavedDisk.StorageBytesStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STORAGE_BYTES_STATUS, 0
  field :UPDATING, 494_614_342
  field :UP_TO_DATE, 101_306_702
end

defmodule Google.Cloud.Compute.V1.ScalingScheduleStatus.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :ACTIVE, 314_733_318
  field :DISABLED, 516_696_700
  field :OBSOLETE, 66_532_761
  field :READY, 77_848_963
end

defmodule Google.Cloud.Compute.V1.Scheduling.InstanceTerminationAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_INSTANCE_TERMINATION_ACTION, 0
  field :DELETE, 402_225_579
  field :INSTANCE_TERMINATION_ACTION_UNSPECIFIED, 92_954_803
  field :STOP, 2_555_906
end

defmodule Google.Cloud.Compute.V1.Scheduling.OnHostMaintenance do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ON_HOST_MAINTENANCE, 0
  field :MIGRATE, 165_699_979
  field :TERMINATE, 527_617_601
end

defmodule Google.Cloud.Compute.V1.Scheduling.ProvisioningModel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROVISIONING_MODEL, 0
  field :SPOT, 2_552_066
  field :STANDARD, 484_642_493
end

defmodule Google.Cloud.Compute.V1.SchedulingNodeAffinity.Operator do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_OPERATOR, 0
  field :IN, 2341
  field :NOT_IN, 161_144_369
  field :OPERATOR_UNSPECIFIED, 128_892_924
end

defmodule Google.Cloud.Compute.V1.SecurityPolicy.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :CLOUD_ARMOR, 260_640_373
  field :CLOUD_ARMOR_EDGE, 250_728_775
  field :CLOUD_ARMOR_NETWORK, 488_527_428
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig.RuleVisibility do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_RULE_VISIBILITY, 0
  field :PREMIUM, 399_530_551
  field :STANDARD, 484_642_493
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyAdvancedOptionsConfig.JsonParsing do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_JSON_PARSING, 0
  field :DISABLED, 516_696_700
  field :STANDARD, 484_642_493
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyAdvancedOptionsConfig.LogLevel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LOG_LEVEL, 0
  field :NORMAL, 161_067_239
  field :VERBOSE, 532_219_234
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyDdosProtectionConfig.DdosProtection do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_DDOS_PROTECTION, 0
  field :ADVANCED, 63_789_090
  field :STANDARD, 484_642_493
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRuleMatcher.VersionedExpr do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_VERSIONED_EXPR, 0
  field :SRC_IPS_V1, 70_925_961
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRuleRateLimitOptions.EnforceOnKey do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ENFORCE_ON_KEY, 0
  field :ALL, 64897
  field :HTTP_COOKIE, 494_981_627
  field :HTTP_HEADER, 91_597_348
  field :IP, 2343
  field :XFF_IP, 438_707_118
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRuleRedirectOptions.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :EXTERNAL_302, 395_733_761
  field :GOOGLE_RECAPTCHA, 518_803_009
end

defmodule Google.Cloud.Compute.V1.ServerBinding.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :RESTART_NODE_ON_ANY_SERVER, 502_950_985
  field :RESTART_NODE_ON_MINIMAL_SERVERS, 204_166_495
  field :SERVER_BINDING_TYPE_UNSPECIFIED, 180_825_512
end

defmodule Google.Cloud.Compute.V1.ServiceAttachment.ConnectionPreference do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CONNECTION_PREFERENCE, 0
  field :ACCEPT_AUTOMATIC, 75_250_580
  field :ACCEPT_MANUAL, 373_061_341
  field :CONNECTION_PREFERENCE_UNSPECIFIED, 34_590_772
end

defmodule Google.Cloud.Compute.V1.ServiceAttachmentConnectedEndpoint.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :ACCEPTED, 246_714_279
  field :CLOSED, 380_163_436
  field :NEEDS_ATTENTION, 344_491_452
  field :PENDING, 35_394_935
  field :REJECTED, 174_130_302
  field :STATUS_UNSPECIFIED, 42_133_066
end

defmodule Google.Cloud.Compute.V1.ShareSettings.ShareType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_SHARE_TYPE, 0
  field :LOCAL, 72_607_563
  field :SHARE_TYPE_UNSPECIFIED, 494_771_730
  field :SPECIFIC_PROJECTS, 347_838_695
end

defmodule Google.Cloud.Compute.V1.Snapshot.Architecture do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ARCHITECTURE, 0
  field :ARCHITECTURE_UNSPECIFIED, 394_750_507
  field :ARM64, 62_547_450
  field :X86_64, 425_300_551
end

defmodule Google.Cloud.Compute.V1.Snapshot.SnapshotType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_SNAPSHOT_TYPE, 0
  field :ARCHIVE, 506_752_162
  field :STANDARD, 484_642_493
end

defmodule Google.Cloud.Compute.V1.Snapshot.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :CREATING, 455_564_985
  field :DELETING, 528_602_024
  field :FAILED, 455_706_685
  field :READY, 77_848_963
  field :UPLOADING, 267_603_489
end

defmodule Google.Cloud.Compute.V1.Snapshot.StorageBytesStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STORAGE_BYTES_STATUS, 0
  field :UPDATING, 494_614_342
  field :UP_TO_DATE, 101_306_702
end

defmodule Google.Cloud.Compute.V1.SourceInstanceProperties.KeyRevocationActionType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_KEY_REVOCATION_ACTION_TYPE, 0
  field :KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED, 467_110_106
  field :NONE, 2_402_104
  field :STOP, 2_555_906
end

defmodule Google.Cloud.Compute.V1.SslCertificate.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :MANAGED, 479_501_183
  field :SELF_MANAGED, 434_437_516
  field :TYPE_UNSPECIFIED, 437_714_322
end

defmodule Google.Cloud.Compute.V1.SslCertificateManagedSslCertificate.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :ACTIVE, 314_733_318
  field :MANAGED_CERTIFICATE_STATUS_UNSPECIFIED, 474_800_850
  field :PROVISIONING, 290_896_621
  field :PROVISIONING_FAILED, 76_813_775
  field :PROVISIONING_FAILED_PERMANENTLY, 275_036_203
  field :RENEWAL_FAILED, 434_659_076
end

defmodule Google.Cloud.Compute.V1.SslPolicy.MinTlsVersion do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MIN_TLS_VERSION, 0
  field :TLS_1_0, 33_116_734
  field :TLS_1_1, 33_116_735
  field :TLS_1_2, 33_116_736
end

defmodule Google.Cloud.Compute.V1.SslPolicy.Profile do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROFILE, 0
  field :COMPATIBLE, 179_357_396
  field :CUSTOM, 388_595_569
  field :MODERN, 132_013_855
  field :RESTRICTED, 261_551_195
end

defmodule Google.Cloud.Compute.V1.StatefulPolicyPreservedStateDiskDevice.AutoDelete do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_AUTO_DELETE, 0
  field :NEVER, 74_175_084
  field :ON_PERMANENT_INSTANCE_DELETION, 95_727_719
end

defmodule Google.Cloud.Compute.V1.Subnetwork.Ipv6AccessType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_IPV6_ACCESS_TYPE, 0
  field :EXTERNAL, 35_607_499
  field :INTERNAL, 279_295_677
  field :UNSPECIFIED_IPV6_ACCESS_TYPE, 313_080_613
end

defmodule Google.Cloud.Compute.V1.Subnetwork.PrivateIpv6GoogleAccess do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PRIVATE_IPV6_GOOGLE_ACCESS, 0
  field :DISABLE_GOOGLE_ACCESS, 450_958_579
  field :ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE, 427_975_994
  field :ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE, 288_210_263
end

defmodule Google.Cloud.Compute.V1.Subnetwork.Purpose do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PURPOSE, 0
  field :INTERNAL_HTTPS_LOAD_BALANCER, 248_748_889
  field :PRIVATE, 403_485_027
  field :PRIVATE_RFC_1918, 254_902_107
  field :PRIVATE_SERVICE_CONNECT, 48_134_724
  field :REGIONAL_MANAGED_PROXY, 153_049_966
end

defmodule Google.Cloud.Compute.V1.Subnetwork.Role do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ROLE, 0
  field :ACTIVE, 314_733_318
  field :BACKUP, 341_010_882
end

defmodule Google.Cloud.Compute.V1.Subnetwork.StackType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STACK_TYPE, 0
  field :IPV4_IPV6, 22_197_249
  field :IPV4_ONLY, 22_373_798
  field :UNSPECIFIED_STACK_TYPE, 298_084_569
end

defmodule Google.Cloud.Compute.V1.Subnetwork.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :DRAINING, 480_455_402
  field :READY, 77_848_963
end

defmodule Google.Cloud.Compute.V1.SubnetworkLogConfig.AggregationInterval do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_AGGREGATION_INTERVAL, 0
  field :INTERVAL_10_MIN, 487_155_916
  field :INTERVAL_15_MIN, 491_773_521
  field :INTERVAL_1_MIN, 69_052_714
  field :INTERVAL_30_SEC, 7_548_937
  field :INTERVAL_5_MIN, 72_746_798
  field :INTERVAL_5_SEC, 72_752_429
end

defmodule Google.Cloud.Compute.V1.SubnetworkLogConfig.Metadata do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_METADATA, 0
  field :CUSTOM_METADATA, 62_450_749
  field :EXCLUDE_ALL_METADATA, 334_519_954
  field :INCLUDE_ALL_METADATA, 164_619_908
end

defmodule Google.Cloud.Compute.V1.Subsetting.Policy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_POLICY, 0
  field :CONSISTENT_HASH_SUBSETTING, 108_989_492
  field :NONE, 2_402_104
end

defmodule Google.Cloud.Compute.V1.TCPHealthCheck.PortSpecification do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PORT_SPECIFICATION, 0
  field :USE_FIXED_PORT, 190_235_748
  field :USE_NAMED_PORT, 349_300_671
  field :USE_SERVING_PORT, 362_637_516
end

defmodule Google.Cloud.Compute.V1.TCPHealthCheck.ProxyHeader do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROXY_HEADER, 0
  field :NONE, 2_402_104
  field :PROXY_V1, 334_352_940
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxiesSetQuicOverrideRequest.QuicOverride do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_QUIC_OVERRIDE, 0
  field :DISABLE, 241_807_048
  field :ENABLE, 438_835_587
  field :NONE, 2_402_104
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxy.QuicOverride do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_QUIC_OVERRIDE, 0
  field :DISABLE, 241_807_048
  field :ENABLE, 438_835_587
  field :NONE, 2_402_104
end

defmodule Google.Cloud.Compute.V1.TargetInstance.NatPolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_NAT_POLICY, 0
  field :NO_NAT, 161_455_491
end

defmodule Google.Cloud.Compute.V1.TargetPool.SessionAffinity do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_SESSION_AFFINITY, 0
  field :CLIENT_IP, 345_665_051
  field :CLIENT_IP_NO_DESTINATION, 106_122_516
  field :CLIENT_IP_PORT_PROTO, 221_722_926
  field :CLIENT_IP_PROTO, 25_322_148
  field :GENERATED_COOKIE, 370_321_204
  field :HEADER_FIELD, 200_737_960
  field :HTTP_COOKIE, 494_981_627
  field :NONE, 2_402_104
end

defmodule Google.Cloud.Compute.V1.TargetSslProxiesSetProxyHeaderRequest.ProxyHeader do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROXY_HEADER, 0
  field :NONE, 2_402_104
  field :PROXY_V1, 334_352_940
end

defmodule Google.Cloud.Compute.V1.TargetSslProxy.ProxyHeader do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROXY_HEADER, 0
  field :NONE, 2_402_104
  field :PROXY_V1, 334_352_940
end

defmodule Google.Cloud.Compute.V1.TargetTcpProxiesSetProxyHeaderRequest.ProxyHeader do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROXY_HEADER, 0
  field :NONE, 2_402_104
  field :PROXY_V1, 334_352_940
end

defmodule Google.Cloud.Compute.V1.TargetTcpProxy.ProxyHeader do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PROXY_HEADER, 0
  field :NONE, 2_402_104
  field :PROXY_V1, 334_352_940
end

defmodule Google.Cloud.Compute.V1.TargetVpnGateway.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :CREATING, 455_564_985
  field :DELETING, 528_602_024
  field :FAILED, 455_706_685
  field :READY, 77_848_963
end

defmodule Google.Cloud.Compute.V1.UpdateInstanceRequest.MinimalAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MINIMAL_ACTION, 0
end

defmodule Google.Cloud.Compute.V1.UpdateInstanceRequest.MostDisruptiveAllowedAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_MOST_DISRUPTIVE_ALLOWED_ACTION, 0
end

defmodule Google.Cloud.Compute.V1.UrlMapsValidateRequest.LoadBalancingSchemes do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_LOAD_BALANCING_SCHEMES, 0
  field :EXTERNAL, 35_607_499
  field :EXTERNAL_MANAGED, 512_006_923
  field :LOAD_BALANCING_SCHEME_UNSPECIFIED, 526_507_452
end

defmodule Google.Cloud.Compute.V1.UsableSubnetwork.Ipv6AccessType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_IPV6_ACCESS_TYPE, 0
  field :EXTERNAL, 35_607_499
  field :INTERNAL, 279_295_677
end

defmodule Google.Cloud.Compute.V1.UsableSubnetwork.Purpose do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_PURPOSE, 0
  field :INTERNAL_HTTPS_LOAD_BALANCER, 248_748_889
  field :PRIVATE, 403_485_027
  field :PRIVATE_RFC_1918, 254_902_107
  field :PRIVATE_SERVICE_CONNECT, 48_134_724
  field :REGIONAL_MANAGED_PROXY, 153_049_966
end

defmodule Google.Cloud.Compute.V1.UsableSubnetwork.Role do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_ROLE, 0
  field :ACTIVE, 314_733_318
  field :BACKUP, 341_010_882
end

defmodule Google.Cloud.Compute.V1.UsableSubnetwork.StackType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STACK_TYPE, 0
  field :IPV4_IPV6, 22_197_249
  field :IPV4_ONLY, 22_373_798
end

defmodule Google.Cloud.Compute.V1.VpnGateway.StackType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STACK_TYPE, 0
  field :IPV4_IPV6, 22_197_249
  field :IPV4_ONLY, 22_373_798
end

defmodule Google.Cloud.Compute.V1.VpnGatewayStatusHighAvailabilityRequirementState.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATE, 0
  field :CONNECTION_REDUNDANCY_MET, 505_242_907
  field :CONNECTION_REDUNDANCY_NOT_MET, 511_863_311
end

defmodule Google.Cloud.Compute.V1.VpnGatewayStatusHighAvailabilityRequirementState.UnsatisfiedReason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_UNSATISFIED_REASON, 0
  field :INCOMPLETE_TUNNELS_COVERAGE, 55_917_437
end

defmodule Google.Cloud.Compute.V1.VpnTunnel.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :ALLOCATING_RESOURCES, 320_922_816
  field :AUTHORIZATION_ERROR, 23_580_290
  field :DEPROVISIONING, 428_935_662
  field :ESTABLISHED, 88_852_344
  field :FAILED, 455_706_685
  field :FIRST_HANDSHAKE, 191_393_000
  field :NEGOTIATION_FAILURE, 360_325_868
  field :NETWORK_ERROR, 193_912_951
  field :NO_INCOMING_PACKETS, 119_983_216
  field :PROVISIONING, 290_896_621
  field :REJECTED, 174_130_302
  field :STOPPED, 444_276_141
  field :WAITING_FOR_FULL_CONFIG, 41_640_522
end

defmodule Google.Cloud.Compute.V1.Warning.Code do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CODE, 0
  field :CLEANUP_FAILED, 150_308_440
  field :DEPRECATED_RESOURCE_USED, 391_835_586
  field :DEPRECATED_TYPE_USED, 346_526_230
  field :DISK_SIZE_LARGER_THAN_IMAGE_SIZE, 369_442_967
  field :EXPERIMENTAL_TYPE_USED, 451_954_443
  field :EXTERNAL_API_WARNING, 175_546_307
  field :FIELD_VALUE_OVERRIDEN, 329_669_423
  field :INJECTED_KERNELS_DEPRECATED, 417_377_419
  field :INVALID_HEALTH_CHECK_FOR_DYNAMIC_WIEGHTED_LB, 401_542_606
  field :LARGE_DEPLOYMENT_WARNING, 481_440_678
  field :MISSING_TYPE_DEPENDENCY, 344_505_463
  field :NEXT_HOP_ADDRESS_NOT_ASSIGNED, 324_964_999
  field :NEXT_HOP_CANNOT_IP_FORWARD, 383_382_887
  field :NEXT_HOP_INSTANCE_HAS_NO_IPV6_INTERFACE, 146_748_434
  field :NEXT_HOP_INSTANCE_NOT_FOUND, 464_250_446
  field :NEXT_HOP_INSTANCE_NOT_ON_NETWORK, 243_758_146
  field :NEXT_HOP_NOT_RUNNING, 417_081_265
  field :NOT_CRITICAL_ERROR, 105_763_924
  field :NO_RESULTS_ON_PAGE, 30_036_744
  field :PARTIAL_SUCCESS, 39_966_469
  field :REQUIRED_TOS_AGREEMENT, 3_745_539
  field :RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING, 496_728_641
  field :RESOURCE_NOT_DELETED, 168_598_460
  field :SCHEMA_VALIDATION_IGNORED, 275_245_642
  field :SINGLE_INSTANCE_PROPERTY_TEMPLATE, 268_305_617
  field :UNDECLARED_PROPERTIES, 390_513_439
  field :UNREACHABLE, 13_328_052
end

defmodule Google.Cloud.Compute.V1.Warnings.Code do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_CODE, 0
  field :CLEANUP_FAILED, 150_308_440
  field :DEPRECATED_RESOURCE_USED, 391_835_586
  field :DEPRECATED_TYPE_USED, 346_526_230
  field :DISK_SIZE_LARGER_THAN_IMAGE_SIZE, 369_442_967
  field :EXPERIMENTAL_TYPE_USED, 451_954_443
  field :EXTERNAL_API_WARNING, 175_546_307
  field :FIELD_VALUE_OVERRIDEN, 329_669_423
  field :INJECTED_KERNELS_DEPRECATED, 417_377_419
  field :INVALID_HEALTH_CHECK_FOR_DYNAMIC_WIEGHTED_LB, 401_542_606
  field :LARGE_DEPLOYMENT_WARNING, 481_440_678
  field :MISSING_TYPE_DEPENDENCY, 344_505_463
  field :NEXT_HOP_ADDRESS_NOT_ASSIGNED, 324_964_999
  field :NEXT_HOP_CANNOT_IP_FORWARD, 383_382_887
  field :NEXT_HOP_INSTANCE_HAS_NO_IPV6_INTERFACE, 146_748_434
  field :NEXT_HOP_INSTANCE_NOT_FOUND, 464_250_446
  field :NEXT_HOP_INSTANCE_NOT_ON_NETWORK, 243_758_146
  field :NEXT_HOP_NOT_RUNNING, 417_081_265
  field :NOT_CRITICAL_ERROR, 105_763_924
  field :NO_RESULTS_ON_PAGE, 30_036_744
  field :PARTIAL_SUCCESS, 39_966_469
  field :REQUIRED_TOS_AGREEMENT, 3_745_539
  field :RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING, 496_728_641
  field :RESOURCE_NOT_DELETED, 168_598_460
  field :SCHEMA_VALIDATION_IGNORED, 275_245_642
  field :SINGLE_INSTANCE_PROPERTY_TEMPLATE, 268_305_617
  field :UNDECLARED_PROPERTIES, 390_513_439
  field :UNREACHABLE, 13_328_052
end

defmodule Google.Cloud.Compute.V1.XpnResourceId.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_TYPE, 0
  field :PROJECT, 408_671_993
  field :XPN_RESOURCE_TYPE_UNSPECIFIED, 151_607_034
end

defmodule Google.Cloud.Compute.V1.Zone.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :DOWN, 2_104_482
  field :UP, 2715
end

defmodule Google.Cloud.Compute.V1.AbandonInstancesInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_managers_abandon_instances_request_resource, 320_929_016,
    type: Google.Cloud.Compute.V1.InstanceGroupManagersAbandonInstancesRequest,
    json_name: "instanceGroupManagersAbandonInstancesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.AbandonInstancesRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_group_managers_abandon_instances_request_resource, 488_499_491,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupManagersAbandonInstancesRequest,
    json_name: "regionInstanceGroupManagersAbandonInstancesRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.AcceleratorConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :accelerator_count, 504_879_675,
    proto3_optional: true,
    type: :int32,
    json_name: "acceleratorCount"

  field :accelerator_type, 138_031_246,
    proto3_optional: true,
    type: :string,
    json_name: "acceleratorType"
end

defmodule Google.Cloud.Compute.V1.AcceleratorType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :deprecated, 515_138_995,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.DeprecationStatus

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :maximum_cards_per_instance, 263_814_482,
    proto3_optional: true,
    type: :int32,
    json_name: "maximumCardsPerInstance"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.AcceleratorTypeAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.AcceleratorTypesScopedList
end

defmodule Google.Cloud.Compute.V1.AcceleratorTypeAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.AcceleratorTypeAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.AcceleratorTypeList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.AcceleratorType
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.AcceleratorTypesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :accelerator_types, 520_872_357,
    repeated: true,
    type: Google.Cloud.Compute.V1.AcceleratorType,
    json_name: "acceleratorTypes"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.Accelerators do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :guest_accelerator_count, 479_079_316,
    proto3_optional: true,
    type: :int32,
    json_name: "guestAcceleratorCount"

  field :guest_accelerator_type, 293_064_725,
    proto3_optional: true,
    type: :string,
    json_name: "guestAcceleratorType"
end

defmodule Google.Cloud.Compute.V1.AccessConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :external_ipv6, 532_703_707,
    proto3_optional: true,
    type: :string,
    json_name: "externalIpv6"

  field :external_ipv6_prefix_length, 425_672_143,
    proto3_optional: true,
    type: :int32,
    json_name: "externalIpv6PrefixLength"

  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :nat_i_p, 117_634_556, proto3_optional: true, type: :string, json_name: "natIP"
  field :network_tier, 517_397_843, proto3_optional: true, type: :string, json_name: "networkTier"

  field :public_ptr_domain_name, 316_599_167,
    proto3_optional: true,
    type: :string,
    json_name: "publicPtrDomainName"

  field :set_public_ptr, 523_870_229,
    proto3_optional: true,
    type: :bool,
    json_name: "setPublicPtr"

  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.AddAccessConfigInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :access_config_resource, 387_825_552,
    type: Google.Cloud.Compute.V1.AccessConfig,
    json_name: "accessConfigResource",
    deprecated: false

  field :instance, 18_257_045, type: :string, deprecated: false

  field :network_interface, 365_387_880,
    type: :string,
    json_name: "networkInterface",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.AddAssociationFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_association_resource, 259_546_170,
    type: Google.Cloud.Compute.V1.FirewallPolicyAssociation,
    json_name: "firewallPolicyAssociationResource",
    deprecated: false

  field :replace_existing_association, 209_541_240,
    proto3_optional: true,
    type: :bool,
    json_name: "replaceExistingAssociation"

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.AddAssociationNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_association_resource, 259_546_170,
    type: Google.Cloud.Compute.V1.FirewallPolicyAssociation,
    json_name: "firewallPolicyAssociationResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false

  field :replace_existing_association, 209_541_240,
    proto3_optional: true,
    type: :bool,
    json_name: "replaceExistingAssociation"

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.AddAssociationRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_association_resource, 259_546_170,
    type: Google.Cloud.Compute.V1.FirewallPolicyAssociation,
    json_name: "firewallPolicyAssociationResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :replace_existing_association, 209_541_240,
    proto3_optional: true,
    type: :bool,
    json_name: "replaceExistingAssociation"

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.AddHealthCheckTargetPoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :target_pool, 62_796_298, type: :string, json_name: "targetPool", deprecated: false

  field :target_pools_add_health_check_request_resource, 269_573_412,
    type: Google.Cloud.Compute.V1.TargetPoolsAddHealthCheckRequest,
    json_name: "targetPoolsAddHealthCheckRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.AddInstanceTargetPoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :target_pool, 62_796_298, type: :string, json_name: "targetPool", deprecated: false

  field :target_pools_add_instance_request_resource, 428_796_404,
    type: Google.Cloud.Compute.V1.TargetPoolsAddInstanceRequest,
    json_name: "targetPoolsAddInstanceRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.AddInstancesInstanceGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group, 81_095_253, type: :string, json_name: "instanceGroup", deprecated: false

  field :instance_groups_add_instances_request_resource, 453_713_246,
    type: Google.Cloud.Compute.V1.InstanceGroupsAddInstancesRequest,
    json_name: "instanceGroupsAddInstancesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.AddNodesNodeGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_group, 469_958_146, type: :string, json_name: "nodeGroup", deprecated: false

  field :node_groups_add_nodes_request_resource, 131_263_288,
    type: Google.Cloud.Compute.V1.NodeGroupsAddNodesRequest,
    json_name: "nodeGroupsAddNodesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.AddPeeringNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network, 232_872_494, type: :string, deprecated: false

  field :networks_add_peering_request_resource, 388_810_421,
    type: Google.Cloud.Compute.V1.NetworksAddPeeringRequest,
    json_name: "networksAddPeeringRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.AddResourcePoliciesDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false

  field :disks_add_resource_policies_request_resource, 496_483_363,
    type: Google.Cloud.Compute.V1.DisksAddResourcePoliciesRequest,
    json_name: "disksAddResourcePoliciesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.AddResourcePoliciesInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :instances_add_resource_policies_request_resource, 489_351_963,
    type: Google.Cloud.Compute.V1.InstancesAddResourcePoliciesRequest,
    json_name: "instancesAddResourcePoliciesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.AddResourcePoliciesRegionDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_disks_add_resource_policies_request_resource, 284_196_750,
    type: Google.Cloud.Compute.V1.RegionDisksAddResourcePoliciesRequest,
    json_name: "regionDisksAddResourcePoliciesRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.AddRuleFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_rule_resource, 250_523_523,
    type: Google.Cloud.Compute.V1.FirewallPolicyRule,
    json_name: "firewallPolicyRuleResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.AddRuleNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_rule_resource, 250_523_523,
    type: Google.Cloud.Compute.V1.FirewallPolicyRule,
    json_name: "firewallPolicyRuleResource",
    deprecated: false

  field :max_priority, 329_635_359, proto3_optional: true, type: :int32, json_name: "maxPriority"
  field :min_priority, 267_190_513, proto3_optional: true, type: :int32, json_name: "minPriority"
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.AddRuleRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_rule_resource, 250_523_523,
    type: Google.Cloud.Compute.V1.FirewallPolicyRule,
    json_name: "firewallPolicyRuleResource",
    deprecated: false

  field :max_priority, 329_635_359, proto3_optional: true, type: :int32, json_name: "maxPriority"
  field :min_priority, 267_190_513, proto3_optional: true, type: :int32, json_name: "minPriority"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.AddRuleSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :security_policy, 171_082_513,
    type: :string,
    json_name: "securityPolicy",
    deprecated: false

  field :security_policy_rule_resource, 402_693_443,
    type: Google.Cloud.Compute.V1.SecurityPolicyRule,
    json_name: "securityPolicyRuleResource",
    deprecated: false

  field :validate_only, 242_744_629, proto3_optional: true, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Compute.V1.AddSignedUrlKeyBackendBucketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_bucket, 91_714_037, type: :string, json_name: "backendBucket", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :signed_url_key_resource, 457_625_985,
    type: Google.Cloud.Compute.V1.SignedUrlKey,
    json_name: "signedUrlKeyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.AddSignedUrlKeyBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :signed_url_key_resource, 457_625_985,
    type: Google.Cloud.Compute.V1.SignedUrlKey,
    json_name: "signedUrlKeyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.Address do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address, 462_920_692, proto3_optional: true, type: :string
  field :address_type, 264_307_877, proto3_optional: true, type: :string, json_name: "addressType"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :ip_version, 294_959_552, proto3_optional: true, type: :string, json_name: "ipVersion"
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string
  field :network_tier, 517_397_843, proto3_optional: true, type: :string, json_name: "networkTier"

  field :prefix_length, 453_565_747,
    proto3_optional: true,
    type: :int32,
    json_name: "prefixLength"

  field :purpose, 316_407_070, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :status, 181_260_274, proto3_optional: true, type: :string
  field :subnetwork, 307_827_694, proto3_optional: true, type: :string
  field :users, 111_578_632, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.AddressAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.AddressesScopedList
end

defmodule Google.Cloud.Compute.V1.AddressAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.AddressAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.AddressList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Address
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.AddressesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :addresses, 337_673_122, repeated: true, type: Google.Cloud.Compute.V1.Address
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.AdvancedMachineFeatures do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_nested_virtualization, 16_639_365,
    proto3_optional: true,
    type: :bool,
    json_name: "enableNestedVirtualization"

  field :enable_uefi_networking, 334_485_668,
    proto3_optional: true,
    type: :bool,
    json_name: "enableUefiNetworking"

  field :threads_per_core, 352_611_671,
    proto3_optional: true,
    type: :int32,
    json_name: "threadsPerCore"
end

defmodule Google.Cloud.Compute.V1.AggregatedListAcceleratorTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListAddressesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListAutoscalersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListBackendServicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListDiskTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListDisksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListForwardingRulesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListGlobalOperationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListHealthChecksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListInstanceGroupManagersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListInstanceGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListInterconnectAttachmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListMachineTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListNetworkEdgeSecurityServicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListNetworkEndpointGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListNodeGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListNodeTemplatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListNodeTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListPacketMirroringsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListPublicDelegatedPrefixesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListRegionCommitmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListReservationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListResourcePoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListRoutersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListSecurityPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListServiceAttachmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListSslCertificatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListSubnetworksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListTargetHttpProxiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListTargetHttpsProxiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListTargetInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListTargetPoolsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListTargetVpnGatewaysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListUrlMapsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListVpnGatewaysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AggregatedListVpnTunnelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.AliasIpRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_cidr_range, 98_117_322, proto3_optional: true, type: :string, json_name: "ipCidrRange"

  field :subnetwork_range_name, 387_995_966,
    proto3_optional: true,
    type: :string,
    json_name: "subnetworkRangeName"
end

defmodule Google.Cloud.Compute.V1.AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_size_gb, 316_263_735, proto3_optional: true, type: :int64, json_name: "diskSizeGb"
  field :interface, 502_623_545, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.AllocationSpecificSKUAllocationReservedInstanceProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :guest_accelerators, 463_595_119,
    repeated: true,
    type: Google.Cloud.Compute.V1.AcceleratorConfig,
    json_name: "guestAccelerators"

  field :local_ssds, 229_951_299,
    repeated: true,
    type:
      Google.Cloud.Compute.V1.AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk,
    json_name: "localSsds"

  field :location_hint, 350_519_505,
    proto3_optional: true,
    type: :string,
    json_name: "locationHint"

  field :machine_type, 227_711_026, proto3_optional: true, type: :string, json_name: "machineType"

  field :min_cpu_platform, 242_912_759,
    proto3_optional: true,
    type: :string,
    json_name: "minCpuPlatform"
end

defmodule Google.Cloud.Compute.V1.AllocationSpecificSKUReservation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :assured_count, 281_197_645,
    proto3_optional: true,
    type: :int64,
    json_name: "assuredCount"

  field :count, 94_851_343, proto3_optional: true, type: :int64
  field :in_use_count, 493_458_877, proto3_optional: true, type: :int64, json_name: "inUseCount"

  field :instance_properties, 215_355_165,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.AllocationSpecificSKUAllocationReservedInstanceProperties,
    json_name: "instanceProperties"
end

defmodule Google.Cloud.Compute.V1.Allowed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :I_p_protocol, 488_094_525, proto3_optional: true, type: :string, json_name: "IPProtocol"
  field :ports, 106_854_418, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ApplyUpdatesToInstancesInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_managers_apply_updates_request_resource, 259_242_835,
    type: Google.Cloud.Compute.V1.InstanceGroupManagersApplyUpdatesRequest,
    json_name: "instanceGroupManagersApplyUpdatesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ApplyUpdatesToInstancesRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_group_managers_apply_updates_request_resource, 76_248_318,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupManagersApplyUpdatesRequest,
    json_name: "regionInstanceGroupManagersApplyUpdatesRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.AttachDiskInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attached_disk_resource, 90_605_845,
    type: Google.Cloud.Compute.V1.AttachedDisk,
    json_name: "attachedDiskResource",
    deprecated: false

  field :force_attach, 142_758_425, proto3_optional: true, type: :bool, json_name: "forceAttach"
  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.AttachNetworkEndpointsGlobalNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_network_endpoint_groups_attach_endpoints_request_resource, 30_691_563,
    type: Google.Cloud.Compute.V1.GlobalNetworkEndpointGroupsAttachEndpointsRequest,
    json_name: "globalNetworkEndpointGroupsAttachEndpointsRequestResource",
    deprecated: false

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.AttachNetworkEndpointsNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :network_endpoint_groups_attach_endpoints_request_resource, 531_079,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroupsAttachEndpointsRequest,
    json_name: "networkEndpointGroupsAttachEndpointsRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.AttachedDisk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :architecture, 302_803_283, proto3_optional: true, type: :string
  field :auto_delete, 464_761_403, proto3_optional: true, type: :bool, json_name: "autoDelete"
  field :boot, 3_029_746, proto3_optional: true, type: :bool
  field :device_name, 67_541_716, proto3_optional: true, type: :string, json_name: "deviceName"

  field :disk_encryption_key, 271_660_677,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "diskEncryptionKey"

  field :disk_size_gb, 316_263_735, proto3_optional: true, type: :int64, json_name: "diskSizeGb"

  field :guest_os_features, 79_294_545,
    repeated: true,
    type: Google.Cloud.Compute.V1.GuestOsFeature,
    json_name: "guestOsFeatures"

  field :index, 100_346_066, proto3_optional: true, type: :int32

  field :initialize_params, 17_697_045,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.AttachedDiskInitializeParams,
    json_name: "initializeParams"

  field :interface, 502_623_545, proto3_optional: true, type: :string
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :licenses, 337_642_578, repeated: true, type: :string
  field :mode, 3_357_091, proto3_optional: true, type: :string

  field :shielded_instance_initial_state, 192_356_867,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InitialStateConfig,
    json_name: "shieldedInstanceInitialState"

  field :source, 177_235_995, proto3_optional: true, type: :string
  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.AttachedDiskInitializeParams.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.AttachedDiskInitializeParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :architecture, 302_803_283, proto3_optional: true, type: :string
  field :description, 422_937_596, proto3_optional: true, type: :string
  field :disk_name, 92_807_149, proto3_optional: true, type: :string, json_name: "diskName"
  field :disk_size_gb, 316_263_735, proto3_optional: true, type: :int64, json_name: "diskSizeGb"
  field :disk_type, 93_009_052, proto3_optional: true, type: :string, json_name: "diskType"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.AttachedDiskInitializeParams.LabelsEntry,
    map: true

  field :licenses, 337_642_578, repeated: true, type: :string

  field :on_update_action, 202_451_980,
    proto3_optional: true,
    type: :string,
    json_name: "onUpdateAction"

  field :provisioned_iops, 186_769_108,
    proto3_optional: true,
    type: :int64,
    json_name: "provisionedIops"

  field :resource_policies, 22_220_385,
    repeated: true,
    type: :string,
    json_name: "resourcePolicies"

  field :source_image, 50_443_319, proto3_optional: true, type: :string, json_name: "sourceImage"

  field :source_image_encryption_key, 381_503_659,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "sourceImageEncryptionKey"

  field :source_snapshot, 126_061_928,
    proto3_optional: true,
    type: :string,
    json_name: "sourceSnapshot"

  field :source_snapshot_encryption_key, 303_679_322,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "sourceSnapshotEncryptionKey"
end

defmodule Google.Cloud.Compute.V1.AuditConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :audit_log_configs, 488_420_626,
    repeated: true,
    type: Google.Cloud.Compute.V1.AuditLogConfig,
    json_name: "auditLogConfigs"

  field :exempted_members, 232_615_576,
    repeated: true,
    type: :string,
    json_name: "exemptedMembers"

  field :service, 373_540_533, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.AuditLogConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exempted_members, 232_615_576,
    repeated: true,
    type: :string,
    json_name: "exemptedMembers"

  field :ignore_child_exemptions, 70_141_850,
    proto3_optional: true,
    type: :bool,
    json_name: "ignoreChildExemptions"

  field :log_type, 403_115_861, proto3_optional: true, type: :string, json_name: "logType"
end

defmodule Google.Cloud.Compute.V1.AuthorizationLoggingOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :permission_type, 525_978_538,
    proto3_optional: true,
    type: :string,
    json_name: "permissionType"
end

defmodule Google.Cloud.Compute.V1.Autoscaler.ScalingScheduleStatusEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.ScalingScheduleStatus
end

defmodule Google.Cloud.Compute.V1.Autoscaler do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaling_policy, 221_950_041,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.AutoscalingPolicy,
    json_name: "autoscalingPolicy"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :recommended_size, 257_915_749,
    proto3_optional: true,
    type: :int32,
    json_name: "recommendedSize"

  field :region, 138_946_292, proto3_optional: true, type: :string

  field :scaling_schedule_status, 465_950_178,
    repeated: true,
    type: Google.Cloud.Compute.V1.Autoscaler.ScalingScheduleStatusEntry,
    json_name: "scalingScheduleStatus",
    map: true

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :status, 181_260_274, proto3_optional: true, type: :string

  field :status_details, 363_353_845,
    repeated: true,
    type: Google.Cloud.Compute.V1.AutoscalerStatusDetails,
    json_name: "statusDetails"

  field :target, 192_835_985, proto3_optional: true, type: :string
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.AutoscalerAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.AutoscalersScopedList
end

defmodule Google.Cloud.Compute.V1.AutoscalerAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.AutoscalerAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.AutoscalerList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Autoscaler
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.AutoscalerStatusDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 418_054_151, proto3_optional: true, type: :string
  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.AutoscalersScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscalers, 465_771_644, repeated: true, type: Google.Cloud.Compute.V1.Autoscaler
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.AutoscalingPolicy.ScalingSchedulesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.AutoscalingPolicyScalingSchedule
end

defmodule Google.Cloud.Compute.V1.AutoscalingPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cool_down_period_sec, 107_692_954,
    proto3_optional: true,
    type: :int32,
    json_name: "coolDownPeriodSec"

  field :cpu_utilization, 381_211_147,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.AutoscalingPolicyCpuUtilization,
    json_name: "cpuUtilization"

  field :custom_metric_utilizations, 131_972_850,
    repeated: true,
    type: Google.Cloud.Compute.V1.AutoscalingPolicyCustomMetricUtilization,
    json_name: "customMetricUtilizations"

  field :load_balancing_utilization, 429_746_403,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.AutoscalingPolicyLoadBalancingUtilization,
    json_name: "loadBalancingUtilization"

  field :max_num_replicas, 62_327_375,
    proto3_optional: true,
    type: :int32,
    json_name: "maxNumReplicas"

  field :min_num_replicas, 535_329_825,
    proto3_optional: true,
    type: :int32,
    json_name: "minNumReplicas"

  field :mode, 3_357_091, proto3_optional: true, type: :string

  field :scale_in_control, 527_670_872,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.AutoscalingPolicyScaleInControl,
    json_name: "scaleInControl"

  field :scaling_schedules, 355_416_580,
    repeated: true,
    type: Google.Cloud.Compute.V1.AutoscalingPolicy.ScalingSchedulesEntry,
    json_name: "scalingSchedules",
    map: true
end

defmodule Google.Cloud.Compute.V1.AutoscalingPolicyCpuUtilization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :predictive_method, 390_220_737,
    proto3_optional: true,
    type: :string,
    json_name: "predictiveMethod"

  field :utilization_target, 215_905_870,
    proto3_optional: true,
    type: :double,
    json_name: "utilizationTarget"
end

defmodule Google.Cloud.Compute.V1.AutoscalingPolicyCustomMetricUtilization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :metric, 533_067_184, proto3_optional: true, type: :string

  field :single_instance_assignment, 504_768_064,
    proto3_optional: true,
    type: :double,
    json_name: "singleInstanceAssignment"

  field :utilization_target, 215_905_870,
    proto3_optional: true,
    type: :double,
    json_name: "utilizationTarget"

  field :utilization_target_type, 340_169_355,
    proto3_optional: true,
    type: :string,
    json_name: "utilizationTargetType"
end

defmodule Google.Cloud.Compute.V1.AutoscalingPolicyLoadBalancingUtilization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :utilization_target, 215_905_870,
    proto3_optional: true,
    type: :double,
    json_name: "utilizationTarget"
end

defmodule Google.Cloud.Compute.V1.AutoscalingPolicyScaleInControl do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_scaled_in_replicas, 180_710_123,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.FixedOrPercent,
    json_name: "maxScaledInReplicas"

  field :time_window_sec, 36_405_300,
    proto3_optional: true,
    type: :int32,
    json_name: "timeWindowSec"
end

defmodule Google.Cloud.Compute.V1.AutoscalingPolicyScalingSchedule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :disabled, 270_940_796, proto3_optional: true, type: :bool
  field :duration_sec, 212_356_902, proto3_optional: true, type: :int32, json_name: "durationSec"

  field :min_required_replicas, 365_514_414,
    proto3_optional: true,
    type: :int32,
    json_name: "minRequiredReplicas"

  field :schedule, 375_820_951, proto3_optional: true, type: :string
  field :time_zone, 36_848_094, proto3_optional: true, type: :string, json_name: "timeZone"
end

defmodule Google.Cloud.Compute.V1.Backend do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :balancing_mode, 430_286_217,
    proto3_optional: true,
    type: :string,
    json_name: "balancingMode"

  field :capacity_scaler, 315_958_157,
    proto3_optional: true,
    type: :float,
    json_name: "capacityScaler"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :failover, 138_892_530, proto3_optional: true, type: :bool
  field :group, 98_629_247, proto3_optional: true, type: :string

  field :max_connections, 110_652_154,
    proto3_optional: true,
    type: :int32,
    json_name: "maxConnections"

  field :max_connections_per_endpoint, 216_904_604,
    proto3_optional: true,
    type: :int32,
    json_name: "maxConnectionsPerEndpoint"

  field :max_connections_per_instance, 104_671_900,
    proto3_optional: true,
    type: :int32,
    json_name: "maxConnectionsPerInstance"

  field :max_rate, 408_035_035, proto3_optional: true, type: :int32, json_name: "maxRate"

  field :max_rate_per_endpoint, 129_832_283,
    proto3_optional: true,
    type: :float,
    json_name: "maxRatePerEndpoint"

  field :max_rate_per_instance, 17_599_579,
    proto3_optional: true,
    type: :float,
    json_name: "maxRatePerInstance"

  field :max_utilization, 148_192_199,
    proto3_optional: true,
    type: :float,
    json_name: "maxUtilization"
end

defmodule Google.Cloud.Compute.V1.BackendBucket do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bucket_name, 283_610_048, proto3_optional: true, type: :string, json_name: "bucketName"

  field :cdn_policy, 213_976_452,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BackendBucketCdnPolicy,
    json_name: "cdnPolicy"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :custom_response_headers, 387_539_094,
    repeated: true,
    type: :string,
    json_name: "customResponseHeaders"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :edge_security_policy, 41_036_943,
    proto3_optional: true,
    type: :string,
    json_name: "edgeSecurityPolicy"

  field :enable_cdn, 282_942_321, proto3_optional: true, type: :bool, json_name: "enableCdn"
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
end

defmodule Google.Cloud.Compute.V1.BackendBucketCdnPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bypass_cache_on_request_headers, 486_203_082,
    repeated: true,
    type: Google.Cloud.Compute.V1.BackendBucketCdnPolicyBypassCacheOnRequestHeader,
    json_name: "bypassCacheOnRequestHeaders"

  field :cache_key_policy, 159_263_727,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BackendBucketCdnPolicyCacheKeyPolicy,
    json_name: "cacheKeyPolicy"

  field :cache_mode, 28_877_888, proto3_optional: true, type: :string, json_name: "cacheMode"
  field :client_ttl, 29_034_360, proto3_optional: true, type: :int32, json_name: "clientTtl"
  field :default_ttl, 100_253_422, proto3_optional: true, type: :int32, json_name: "defaultTtl"
  field :max_ttl, 307_578_001, proto3_optional: true, type: :int32, json_name: "maxTtl"

  field :negative_caching, 336_110_005,
    proto3_optional: true,
    type: :bool,
    json_name: "negativeCaching"

  field :negative_caching_policy, 155_359_996,
    repeated: true,
    type: Google.Cloud.Compute.V1.BackendBucketCdnPolicyNegativeCachingPolicy,
    json_name: "negativeCachingPolicy"

  field :request_coalescing, 532_808_276,
    proto3_optional: true,
    type: :bool,
    json_name: "requestCoalescing"

  field :serve_while_stale, 236_682_203,
    proto3_optional: true,
    type: :int32,
    json_name: "serveWhileStale"

  field :signed_url_cache_max_age_sec, 269_374_534,
    proto3_optional: true,
    type: :int64,
    json_name: "signedUrlCacheMaxAgeSec"

  field :signed_url_key_names, 371_848_885,
    repeated: true,
    type: :string,
    json_name: "signedUrlKeyNames"
end

defmodule Google.Cloud.Compute.V1.BackendBucketCdnPolicyBypassCacheOnRequestHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header_name, 110_223_613, proto3_optional: true, type: :string, json_name: "headerName"
end

defmodule Google.Cloud.Compute.V1.BackendBucketCdnPolicyCacheKeyPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :include_http_headers, 2_489_606,
    repeated: true,
    type: :string,
    json_name: "includeHttpHeaders"

  field :query_string_whitelist, 52_456_496,
    repeated: true,
    type: :string,
    json_name: "queryStringWhitelist"
end

defmodule Google.Cloud.Compute.V1.BackendBucketCdnPolicyNegativeCachingPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 3_059_181, proto3_optional: true, type: :int32
  field :ttl, 115_180, proto3_optional: true, type: :int32
end

defmodule Google.Cloud.Compute.V1.BackendBucketList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.BackendBucket
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.BackendService do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :affinity_cookie_ttl_sec, 369_996_954,
    proto3_optional: true,
    type: :int32,
    json_name: "affinityCookieTtlSec"

  field :backends, 510_839_903, repeated: true, type: Google.Cloud.Compute.V1.Backend

  field :cdn_policy, 213_976_452,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BackendServiceCdnPolicy,
    json_name: "cdnPolicy"

  field :circuit_breakers, 421_340_061,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CircuitBreakers,
    json_name: "circuitBreakers"

  field :connection_draining, 461_096_747,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ConnectionDraining,
    json_name: "connectionDraining"

  field :connection_tracking_policy, 143_994_969,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BackendServiceConnectionTrackingPolicy,
    json_name: "connectionTrackingPolicy"

  field :consistent_hash, 905_883,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ConsistentHashLoadBalancerSettings,
    json_name: "consistentHash"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :custom_request_headers, 27_977_992,
    repeated: true,
    type: :string,
    json_name: "customRequestHeaders"

  field :custom_response_headers, 387_539_094,
    repeated: true,
    type: :string,
    json_name: "customResponseHeaders"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :edge_security_policy, 41_036_943,
    proto3_optional: true,
    type: :string,
    json_name: "edgeSecurityPolicy"

  field :enable_c_d_n, 250_733_499, proto3_optional: true, type: :bool, json_name: "enableCDN"

  field :failover_policy, 105_658_655,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BackendServiceFailoverPolicy,
    json_name: "failoverPolicy"

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :health_checks, 448_370_606, repeated: true, type: :string, json_name: "healthChecks"
  field :iap, 104_024, proto3_optional: true, type: Google.Cloud.Compute.V1.BackendServiceIAP
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :load_balancing_scheme, 363_890_244,
    proto3_optional: true,
    type: :string,
    json_name: "loadBalancingScheme"

  field :locality_lb_policies, 140_982_557,
    repeated: true,
    type: Google.Cloud.Compute.V1.BackendServiceLocalityLoadBalancingPolicyConfig,
    json_name: "localityLbPolicies"

  field :locality_lb_policy, 131_431_487,
    proto3_optional: true,
    type: :string,
    json_name: "localityLbPolicy"

  field :log_config, 351_299_741,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BackendServiceLogConfig,
    json_name: "logConfig"

  field :max_stream_duration, 61_428_376,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.Duration,
    json_name: "maxStreamDuration"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string

  field :outlier_detection, 354_625_086,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.OutlierDetection,
    json_name: "outlierDetection"

  field :port, 3_446_913, proto3_optional: true, type: :int32
  field :port_name, 41_534_345, proto3_optional: true, type: :string, json_name: "portName"
  field :protocol, 84_577_944, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string

  field :security_policy, 171_082_513,
    proto3_optional: true,
    type: :string,
    json_name: "securityPolicy"

  field :security_settings, 478_649_922,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecuritySettings,
    json_name: "securitySettings"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :service_bindings, 133_581_016,
    repeated: true,
    type: :string,
    json_name: "serviceBindings"

  field :session_affinity, 463_888_561,
    proto3_optional: true,
    type: :string,
    json_name: "sessionAffinity"

  field :subsetting, 450_283_536, proto3_optional: true, type: Google.Cloud.Compute.V1.Subsetting
  field :timeout_sec, 79_994_995, proto3_optional: true, type: :int32, json_name: "timeoutSec"
end

defmodule Google.Cloud.Compute.V1.BackendServiceAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.BackendServicesScopedList
end

defmodule Google.Cloud.Compute.V1.BackendServiceAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.BackendServiceAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.BackendServiceCdnPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bypass_cache_on_request_headers, 486_203_082,
    repeated: true,
    type: Google.Cloud.Compute.V1.BackendServiceCdnPolicyBypassCacheOnRequestHeader,
    json_name: "bypassCacheOnRequestHeaders"

  field :cache_key_policy, 159_263_727,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CacheKeyPolicy,
    json_name: "cacheKeyPolicy"

  field :cache_mode, 28_877_888, proto3_optional: true, type: :string, json_name: "cacheMode"
  field :client_ttl, 29_034_360, proto3_optional: true, type: :int32, json_name: "clientTtl"
  field :default_ttl, 100_253_422, proto3_optional: true, type: :int32, json_name: "defaultTtl"
  field :max_ttl, 307_578_001, proto3_optional: true, type: :int32, json_name: "maxTtl"

  field :negative_caching, 336_110_005,
    proto3_optional: true,
    type: :bool,
    json_name: "negativeCaching"

  field :negative_caching_policy, 155_359_996,
    repeated: true,
    type: Google.Cloud.Compute.V1.BackendServiceCdnPolicyNegativeCachingPolicy,
    json_name: "negativeCachingPolicy"

  field :request_coalescing, 532_808_276,
    proto3_optional: true,
    type: :bool,
    json_name: "requestCoalescing"

  field :serve_while_stale, 236_682_203,
    proto3_optional: true,
    type: :int32,
    json_name: "serveWhileStale"

  field :signed_url_cache_max_age_sec, 269_374_534,
    proto3_optional: true,
    type: :int64,
    json_name: "signedUrlCacheMaxAgeSec"

  field :signed_url_key_names, 371_848_885,
    repeated: true,
    type: :string,
    json_name: "signedUrlKeyNames"
end

defmodule Google.Cloud.Compute.V1.BackendServiceCdnPolicyBypassCacheOnRequestHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header_name, 110_223_613, proto3_optional: true, type: :string, json_name: "headerName"
end

defmodule Google.Cloud.Compute.V1.BackendServiceCdnPolicyNegativeCachingPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 3_059_181, proto3_optional: true, type: :int32
  field :ttl, 115_180, proto3_optional: true, type: :int32
end

defmodule Google.Cloud.Compute.V1.BackendServiceConnectionTrackingPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection_persistence_on_unhealthy_backends, 152_439_033,
    proto3_optional: true,
    type: :string,
    json_name: "connectionPersistenceOnUnhealthyBackends"

  field :enable_strong_affinity, 24_539_924,
    proto3_optional: true,
    type: :bool,
    json_name: "enableStrongAffinity"

  field :idle_timeout_sec, 24_977_544,
    proto3_optional: true,
    type: :int32,
    json_name: "idleTimeoutSec"

  field :tracking_mode, 127_757_867,
    proto3_optional: true,
    type: :string,
    json_name: "trackingMode"
end

defmodule Google.Cloud.Compute.V1.BackendServiceFailoverPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disable_connection_drain_on_failover, 182_150_753,
    proto3_optional: true,
    type: :bool,
    json_name: "disableConnectionDrainOnFailover"

  field :drop_traffic_if_unhealthy, 112_289_428,
    proto3_optional: true,
    type: :bool,
    json_name: "dropTrafficIfUnhealthy"

  field :failover_ratio, 212_667_006,
    proto3_optional: true,
    type: :float,
    json_name: "failoverRatio"
end

defmodule Google.Cloud.Compute.V1.BackendServiceGroupHealth.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.BackendServiceGroupHealth do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :annotations, 112_032_548,
    repeated: true,
    type: Google.Cloud.Compute.V1.BackendServiceGroupHealth.AnnotationsEntry,
    map: true

  field :health_status, 380_545_845,
    repeated: true,
    type: Google.Cloud.Compute.V1.HealthStatus,
    json_name: "healthStatus"

  field :kind, 3_292_052, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.BackendServiceIAP do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1_018_689, proto3_optional: true, type: :bool

  field :oauth2_client_id, 314_017_611,
    proto3_optional: true,
    type: :string,
    json_name: "oauth2ClientId"

  field :oauth2_client_secret, 50_999_520,
    proto3_optional: true,
    type: :string,
    json_name: "oauth2ClientSecret"

  field :oauth2_client_secret_sha256, 112_903_782,
    proto3_optional: true,
    type: :string,
    json_name: "oauth2ClientSecretSha256"
end

defmodule Google.Cloud.Compute.V1.BackendServiceList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.BackendService
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.BackendServiceLocalityLoadBalancingPolicyConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :custom_policy, 4_818_368,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy,
    json_name: "customPolicy"

  field :policy, 91_071_794,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BackendServiceLocalityLoadBalancingPolicyConfigPolicy
end

defmodule Google.Cloud.Compute.V1.BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 3_076_010, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.BackendServiceLocalityLoadBalancingPolicyConfigPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 3_373_707, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.BackendServiceLogConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable, 311_764_355, proto3_optional: true, type: :bool
  field :sample_rate, 153_193_045, proto3_optional: true, type: :float, json_name: "sampleRate"
end

defmodule Google.Cloud.Compute.V1.BackendServiceReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    proto3_optional: true,
    type: :string,
    json_name: "backendService"
end

defmodule Google.Cloud.Compute.V1.BackendServicesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_services, 388_522_409,
    repeated: true,
    type: Google.Cloud.Compute.V1.BackendService,
    json_name: "backendServices"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.BfdPacket do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authentication_present, 105_974_260,
    proto3_optional: true,
    type: :bool,
    json_name: "authenticationPresent"

  field :control_plane_independent, 62_363_573,
    proto3_optional: true,
    type: :bool,
    json_name: "controlPlaneIndependent"

  field :demand, 275_180_107, proto3_optional: true, type: :bool
  field :diagnostic, 62_708_647, proto3_optional: true, type: :string
  field :final, 97_436_022, proto3_optional: true, type: :bool
  field :length, 504_249_062, proto3_optional: true, type: :uint32

  field :min_echo_rx_interval_ms, 97_286_868,
    proto3_optional: true,
    type: :uint32,
    json_name: "minEchoRxIntervalMs"

  field :min_rx_interval_ms, 463_399_028,
    proto3_optional: true,
    type: :uint32,
    json_name: "minRxIntervalMs"

  field :min_tx_interval_ms, 526_023_602,
    proto3_optional: true,
    type: :uint32,
    json_name: "minTxIntervalMs"

  field :multiplier, 191_331_777, proto3_optional: true, type: :uint32
  field :multipoint, 191_421_431, proto3_optional: true, type: :bool

  field :my_discriminator, 76_663_113,
    proto3_optional: true,
    type: :uint32,
    json_name: "myDiscriminator"

  field :poll, 3_446_719, proto3_optional: true, type: :bool
  field :state, 109_757_585, proto3_optional: true, type: :string
  field :version, 351_608_024, proto3_optional: true, type: :uint32

  field :your_discriminator, 515_634_064,
    proto3_optional: true,
    type: :uint32,
    json_name: "yourDiscriminator"
end

defmodule Google.Cloud.Compute.V1.BfdStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bfd_session_initialization_mode, 218_156_954,
    proto3_optional: true,
    type: :string,
    json_name: "bfdSessionInitializationMode"

  field :config_update_timestamp_micros, 457_195_569,
    proto3_optional: true,
    type: :int64,
    json_name: "configUpdateTimestampMicros"

  field :control_packet_counts, 132_573_561,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BfdStatusPacketCounts,
    json_name: "controlPacketCounts"

  field :control_packet_intervals, 500_806_649,
    repeated: true,
    type: Google.Cloud.Compute.V1.PacketIntervals,
    json_name: "controlPacketIntervals"

  field :local_diagnostic, 463_737_083,
    proto3_optional: true,
    type: :string,
    json_name: "localDiagnostic"

  field :local_state, 149_195_453, proto3_optional: true, type: :string, json_name: "localState"

  field :negotiated_local_control_tx_interval_ms, 21_768_340,
    proto3_optional: true,
    type: :uint32,
    json_name: "negotiatedLocalControlTxIntervalMs"

  field :rx_packet, 505_069_729,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BfdPacket,
    json_name: "rxPacket"

  field :tx_packet, 111_386_275,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BfdPacket,
    json_name: "txPacket"

  field :uptime_ms, 125_398_365, proto3_optional: true, type: :int64, json_name: "uptimeMs"
end

defmodule Google.Cloud.Compute.V1.BfdStatusPacketCounts do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :num_rx, 39_375_263, proto3_optional: true, type: :uint32, json_name: "numRx"

  field :num_rx_rejected, 281_007_902,
    proto3_optional: true,
    type: :uint32,
    json_name: "numRxRejected"

  field :num_rx_successful, 455_361_850,
    proto3_optional: true,
    type: :uint32,
    json_name: "numRxSuccessful"

  field :num_tx, 39_375_325, proto3_optional: true, type: :uint32, json_name: "numTx"
end

defmodule Google.Cloud.Compute.V1.Binding do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :binding_id, 441_088_277, proto3_optional: true, type: :string, json_name: "bindingId"
  field :condition, 212_430_107, proto3_optional: true, type: Google.Cloud.Compute.V1.Expr
  field :members, 412_010_777, repeated: true, type: :string
  field :role, 3_506_294, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.BulkInsertInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bulk_insert_instance_resource_resource, 41_427_278,
    type: Google.Cloud.Compute.V1.BulkInsertInstanceResource,
    json_name: "bulkInsertInstanceResourceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.BulkInsertInstanceResource.PerInstancePropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.BulkInsertInstanceResourcePerInstanceProperties
end

defmodule Google.Cloud.Compute.V1.BulkInsertInstanceResource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :count, 94_851_343, proto3_optional: true, type: :int64

  field :instance_properties, 215_355_165,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InstanceProperties,
    json_name: "instanceProperties"

  field :location_policy, 465_689_852,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.LocationPolicy,
    json_name: "locationPolicy"

  field :min_count, 523_228_386, proto3_optional: true, type: :int64, json_name: "minCount"
  field :name_pattern, 413_815_260, proto3_optional: true, type: :string, json_name: "namePattern"

  field :per_instance_properties, 108_502_267,
    repeated: true,
    type: Google.Cloud.Compute.V1.BulkInsertInstanceResource.PerInstancePropertiesEntry,
    json_name: "perInstanceProperties",
    map: true

  field :source_instance_template, 332_423_616,
    proto3_optional: true,
    type: :string,
    json_name: "sourceInstanceTemplate"
end

defmodule Google.Cloud.Compute.V1.BulkInsertInstanceResourcePerInstanceProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 3_373_707, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.BulkInsertRegionInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bulk_insert_instance_resource_resource, 41_427_278,
    type: Google.Cloud.Compute.V1.BulkInsertInstanceResource,
    json_name: "bulkInsertInstanceResourceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.CacheInvalidationRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :host, 3_208_616, proto3_optional: true, type: :string
  field :path, 3_433_509, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.CacheKeyPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :include_host, 486_867_679, proto3_optional: true, type: :bool, json_name: "includeHost"

  field :include_http_headers, 2_489_606,
    repeated: true,
    type: :string,
    json_name: "includeHttpHeaders"

  field :include_named_cookies, 87_316_530,
    repeated: true,
    type: :string,
    json_name: "includeNamedCookies"

  field :include_protocol, 303_507_535,
    proto3_optional: true,
    type: :bool,
    json_name: "includeProtocol"

  field :include_query_string, 474_036_639,
    proto3_optional: true,
    type: :bool,
    json_name: "includeQueryString"

  field :query_string_blacklist, 354_964_742,
    repeated: true,
    type: :string,
    json_name: "queryStringBlacklist"

  field :query_string_whitelist, 52_456_496,
    repeated: true,
    type: :string,
    json_name: "queryStringWhitelist"
end

defmodule Google.Cloud.Compute.V1.CircuitBreakers do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_connections, 110_652_154,
    proto3_optional: true,
    type: :int32,
    json_name: "maxConnections"

  field :max_pending_requests, 375_558_887,
    proto3_optional: true,
    type: :int32,
    json_name: "maxPendingRequests"

  field :max_requests, 28_097_599, proto3_optional: true, type: :int32, json_name: "maxRequests"

  field :max_requests_per_connection, 361_630_528,
    proto3_optional: true,
    type: :int32,
    json_name: "maxRequestsPerConnection"

  field :max_retries, 55_546_219, proto3_optional: true, type: :int32, json_name: "maxRetries"
end

defmodule Google.Cloud.Compute.V1.CloneRulesFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :source_firewall_policy, 25_013_549,
    proto3_optional: true,
    type: :string,
    json_name: "sourceFirewallPolicy"
end

defmodule Google.Cloud.Compute.V1.CloneRulesNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :source_firewall_policy, 25_013_549,
    proto3_optional: true,
    type: :string,
    json_name: "sourceFirewallPolicy"
end

defmodule Google.Cloud.Compute.V1.CloneRulesRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :source_firewall_policy, 25_013_549,
    proto3_optional: true,
    type: :string,
    json_name: "sourceFirewallPolicy"
end

defmodule Google.Cloud.Compute.V1.Commitment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_renew, 495_520_765, proto3_optional: true, type: :bool, json_name: "autoRenew"
  field :category, 50_511_102, proto3_optional: true, type: :string

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :end_timestamp, 468_096_690,
    proto3_optional: true,
    type: :string,
    json_name: "endTimestamp"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :license_resource, 437_955_148,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.LicenseResourceCommitment,
    json_name: "licenseResource"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :plan, 3_443_497, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :reservations, 399_717_927, repeated: true, type: Google.Cloud.Compute.V1.Reservation
  field :resources, 164_412_965, repeated: true, type: Google.Cloud.Compute.V1.ResourceCommitment
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :start_timestamp, 83_645_817,
    proto3_optional: true,
    type: :string,
    json_name: "startTimestamp"

  field :status, 181_260_274, proto3_optional: true, type: :string

  field :status_message, 297_428_154,
    proto3_optional: true,
    type: :string,
    json_name: "statusMessage"

  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.CommitmentAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.CommitmentsScopedList
end

defmodule Google.Cloud.Compute.V1.CommitmentAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.CommitmentAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.CommitmentList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Commitment
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.CommitmentsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :commitments, 450_664_446, repeated: true, type: Google.Cloud.Compute.V1.Commitment
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.Condition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :iam, 104_021, proto3_optional: true, type: :string
  field :op, 3553, proto3_optional: true, type: :string
  field :svc, 114_272, proto3_optional: true, type: :string
  field :sys, 114_381, proto3_optional: true, type: :string
  field :values, 249_928_994, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ConfidentialInstanceConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_confidential_compute, 102_135_228,
    proto3_optional: true,
    type: :bool,
    json_name: "enableConfidentialCompute"
end

defmodule Google.Cloud.Compute.V1.ConnectionDraining do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :draining_timeout_sec, 225_127_070,
    proto3_optional: true,
    type: :int32,
    json_name: "drainingTimeoutSec"
end

defmodule Google.Cloud.Compute.V1.ConsistentHashLoadBalancerSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :http_cookie, 6_673_915,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ConsistentHashLoadBalancerSettingsHttpCookie,
    json_name: "httpCookie"

  field :http_header_name, 234_798_022,
    proto3_optional: true,
    type: :string,
    json_name: "httpHeaderName"

  field :minimum_ring_size, 234_380_735,
    proto3_optional: true,
    type: :int64,
    json_name: "minimumRingSize"
end

defmodule Google.Cloud.Compute.V1.ConsistentHashLoadBalancerSettingsHttpCookie do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :path, 3_433_509, proto3_optional: true, type: :string
  field :ttl, 115_180, proto3_optional: true, type: Google.Cloud.Compute.V1.Duration
end

defmodule Google.Cloud.Compute.V1.CorsPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allow_credentials, 481_263_366,
    proto3_optional: true,
    type: :bool,
    json_name: "allowCredentials"

  field :allow_headers, 45_179_024, repeated: true, type: :string, json_name: "allowHeaders"
  field :allow_methods, 205_405_372, repeated: true, type: :string, json_name: "allowMethods"

  field :allow_origin_regexes, 215_385_810,
    repeated: true,
    type: :string,
    json_name: "allowOriginRegexes"

  field :allow_origins, 194_914_071, repeated: true, type: :string, json_name: "allowOrigins"
  field :disabled, 270_940_796, proto3_optional: true, type: :bool
  field :expose_headers, 247_604_747, repeated: true, type: :string, json_name: "exposeHeaders"
  field :max_age, 307_559_332, proto3_optional: true, type: :int32, json_name: "maxAge"
end

defmodule Google.Cloud.Compute.V1.CreateInstancesInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_managers_create_instances_request_resource, 24_558_867,
    type: Google.Cloud.Compute.V1.InstanceGroupManagersCreateInstancesRequest,
    json_name: "instanceGroupManagersCreateInstancesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.CreateInstancesRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_group_managers_create_instances_request_resource, 359_014_280,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupManagersCreateInstancesRequest,
    json_name: "regionInstanceGroupManagersCreateInstancesRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.CreateSnapshotDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false
  field :guest_flush, 385_550_813, proto3_optional: true, type: :bool, json_name: "guestFlush"
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :snapshot_resource, 481_319_977,
    type: Google.Cloud.Compute.V1.Snapshot,
    json_name: "snapshotResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.CreateSnapshotRegionDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :snapshot_resource, 481_319_977,
    type: Google.Cloud.Compute.V1.Snapshot,
    json_name: "snapshotResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.CustomerEncryptionKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kms_key_name, 484_373_913, proto3_optional: true, type: :string, json_name: "kmsKeyName"

  field :kms_key_service_account, 209_986_261,
    proto3_optional: true,
    type: :string,
    json_name: "kmsKeyServiceAccount"

  field :raw_key, 449_196_488, proto3_optional: true, type: :string, json_name: "rawKey"

  field :rsa_encrypted_key, 335_487_397,
    proto3_optional: true,
    type: :string,
    json_name: "rsaEncryptedKey"

  field :sha256, 170_112_551, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.CustomerEncryptionKeyProtectedDisk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_encryption_key, 271_660_677,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "diskEncryptionKey"

  field :source, 177_235_995, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.Data do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 106_079, proto3_optional: true, type: :string
  field :value, 111_972_721, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.DeleteAccessConfigInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :access_config, 72_856_189, type: :string, json_name: "accessConfig", deprecated: false
  field :instance, 18_257_045, type: :string, deprecated: false

  field :network_interface, 365_387_880,
    type: :string,
    json_name: "networkInterface",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteAddressRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address, 462_920_692, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteAutoscalerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler, 517_258_967, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteBackendBucketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_bucket, 91_714_037, type: :string, json_name: "backendBucket", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteExternalVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :external_vpn_gateway, 109_898_629,
    type: :string,
    json_name: "externalVpnGateway",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteFirewallRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall, 511_016_192, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rule, 269_964_030,
    type: :string,
    json_name: "forwardingRule",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteGlobalAddressRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address, 462_920_692, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteGlobalForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rule, 269_964_030,
    type: :string,
    json_name: "forwardingRule",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteGlobalNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteGlobalOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteGlobalOperationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Compute.V1.DeleteGlobalOrganizationOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :parent_id, 459_714_768, proto3_optional: true, type: :string, json_name: "parentId"
end

defmodule Google.Cloud.Compute.V1.DeleteGlobalOrganizationOperationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Compute.V1.DeleteGlobalPublicDelegatedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_delegated_prefix, 204_238_440,
    type: :string,
    json_name: "publicDelegatedPrefix",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check, 308_876_645, type: :string, json_name: "healthCheck", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :image, 100_313_435, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteInstanceGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group, 81_095_253, type: :string, json_name: "instanceGroup", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteInstanceTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_template, 309_248_228,
    type: :string,
    json_name: "instanceTemplate",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteInstancesInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_managers_delete_instances_request_resource, 166_421_252,
    type: Google.Cloud.Compute.V1.InstanceGroupManagersDeleteInstancesRequest,
    json_name: "instanceGroupManagersDeleteInstancesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteInstancesRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_group_managers_delete_instances_request_resource, 500_876_665,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupManagersDeleteInstancesRequest,
    json_name: "regionInstanceGroupManagersDeleteInstancesRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteInterconnectAttachmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect_attachment, 308_135_284,
    type: :string,
    json_name: "interconnectAttachment",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteInterconnectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect, 224_601_230, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteLicenseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :license, 166_757_441, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteMachineImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :machine_image, 69_189_475, type: :string, json_name: "machineImage", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteNetworkEdgeSecurityServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_edge_security_service, 157_011_879,
    type: :string,
    json_name: "networkEdgeSecurityService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network, 232_872_494, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteNodeGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_group, 469_958_146, type: :string, json_name: "nodeGroup", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteNodeTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_template, 323_154_455, type: :string, json_name: "nodeTemplate", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteNodesNodeGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_group, 469_958_146, type: :string, json_name: "nodeGroup", deprecated: false

  field :node_groups_delete_nodes_request_resource, 183_298_962,
    type: Google.Cloud.Compute.V1.NodeGroupsDeleteNodesRequest,
    json_name: "nodeGroupsDeleteNodesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeletePacketMirroringRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_mirroring, 22_305_996,
    type: :string,
    json_name: "packetMirroring",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeletePerInstanceConfigsInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_managers_delete_per_instance_configs_req_resource, 362_427_680,
    type: Google.Cloud.Compute.V1.InstanceGroupManagersDeletePerInstanceConfigsReq,
    json_name: "instanceGroupManagersDeletePerInstanceConfigsReqResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeletePerInstanceConfigsRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_group_manager_delete_instance_config_req_resource, 740_741,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupManagerDeleteInstanceConfigReq,
    json_name: "regionInstanceGroupManagerDeleteInstanceConfigReqResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeletePublicAdvertisedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_advertised_prefix, 101_874_590,
    type: :string,
    json_name: "publicAdvertisedPrefix",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeletePublicDelegatedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_delegated_prefix, 204_238_440,
    type: :string,
    json_name: "publicDelegatedPrefix",
    deprecated: false

  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteRegionAutoscalerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler, 517_258_967, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteRegionBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteRegionDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteRegionHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check, 308_876_645, type: :string, json_name: "healthCheck", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteRegionHealthCheckServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check_service, 408_374_747,
    type: :string,
    json_name: "healthCheckService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteRegionNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteRegionNotificationEndpointRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :notification_endpoint, 376_807_017,
    type: :string,
    json_name: "notificationEndpoint",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteRegionOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteRegionOperationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Compute.V1.DeleteRegionSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :security_policy, 171_082_513,
    type: :string,
    json_name: "securityPolicy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteRegionSslCertificateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :ssl_certificate, 46_443_492,
    type: :string,
    json_name: "sslCertificate",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteRegionTargetHttpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_http_proxy, 206_872_421,
    type: :string,
    json_name: "targetHttpProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteRegionTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteRegionUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :url_map, 367_020_684, type: :string, json_name: "urlMap", deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :reservation, 47_530_956, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteResourcePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :resource_policy, 159_240_835,
    type: :string,
    json_name: "resourcePolicy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteRouteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :route, 108_704_329, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteRouterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :router, 148_608_841, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :security_policy, 171_082_513,
    type: :string,
    json_name: "securityPolicy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteServiceAttachmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :service_attachment, 338_957_549,
    type: :string,
    json_name: "serviceAttachment",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteSignedUrlKeyBackendBucketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_bucket, 91_714_037, type: :string, json_name: "backendBucket", deprecated: false
  field :key_name, 500_938_859, type: :string, json_name: "keyName", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteSignedUrlKeyBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :key_name, 500_938_859, type: :string, json_name: "keyName", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeleteSnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :snapshot, 284_874_180, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteSslCertificateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :ssl_certificate, 46_443_492,
    type: :string,
    json_name: "sslCertificate",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteSslPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :ssl_policy, 295_190_213, type: :string, json_name: "sslPolicy", deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteSubnetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :subnetwork, 307_827_694, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteTargetGrpcProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_grpc_proxy, 5_020_283,
    type: :string,
    json_name: "targetGrpcProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteTargetHttpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_http_proxy, 206_872_421,
    type: :string,
    json_name: "targetHttpProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteTargetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_instance, 289_769_347,
    type: :string,
    json_name: "targetInstance",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteTargetPoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :target_pool, 62_796_298, type: :string, json_name: "targetPool", deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteTargetSslProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_ssl_proxy, 338_795_853,
    type: :string,
    json_name: "targetSslProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteTargetTcpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_tcp_proxy, 503_065_442,
    type: :string,
    json_name: "targetTcpProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteTargetVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_vpn_gateway, 532_512_843,
    type: :string,
    json_name: "targetVpnGateway",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :url_map, 367_020_684, type: :string, json_name: "urlMap", deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :vpn_gateway, 406_684_153, type: :string, json_name: "vpnGateway", deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteVpnTunnelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :vpn_tunnel, 143_821_331, type: :string, json_name: "vpnTunnel", deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteZoneOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DeleteZoneOperationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Compute.V1.Denied do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :I_p_protocol, 488_094_525, proto3_optional: true, type: :string, json_name: "IPProtocol"
  field :ports, 106_854_418, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.DeprecateImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deprecation_status_resource, 333_006_064,
    type: Google.Cloud.Compute.V1.DeprecationStatus,
    json_name: "deprecationStatusResource",
    deprecated: false

  field :image, 100_313_435, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DeprecationStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deleted, 476_721_177, proto3_optional: true, type: :string
  field :deprecated, 515_138_995, proto3_optional: true, type: :string
  field :obsolete, 357_647_769, proto3_optional: true, type: :string
  field :replacement, 430_919_186, proto3_optional: true, type: :string
  field :state, 109_757_585, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.DetachDiskInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :device_name, 67_541_716, type: :string, json_name: "deviceName", deprecated: false
  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DetachNetworkEndpointsGlobalNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_network_endpoint_groups_detach_endpoints_request_resource, 8_898_269,
    type: Google.Cloud.Compute.V1.GlobalNetworkEndpointGroupsDetachEndpointsRequest,
    json_name: "globalNetworkEndpointGroupsDetachEndpointsRequestResource",
    deprecated: false

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DetachNetworkEndpointsNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :network_endpoint_groups_detach_endpoints_request_resource, 515_608_697,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroupsDetachEndpointsRequest,
    json_name: "networkEndpointGroupsDetachEndpointsRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.DisableXpnHostProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.DisableXpnResourceProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :projects_disable_xpn_resource_request_resource, 209_136_170,
    type: Google.Cloud.Compute.V1.ProjectsDisableXpnResourceRequest,
    json_name: "projectsDisableXpnResourceRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.Disk.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.Disk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :architecture, 302_803_283, proto3_optional: true, type: :string

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :disk_encryption_key, 271_660_677,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "diskEncryptionKey"

  field :guest_os_features, 79_294_545,
    repeated: true,
    type: Google.Cloud.Compute.V1.GuestOsFeature,
    json_name: "guestOsFeatures"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :label_fingerprint, 178_124_825,
    proto3_optional: true,
    type: :string,
    json_name: "labelFingerprint"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.Disk.LabelsEntry,
    map: true

  field :last_attach_timestamp, 42_159_653,
    proto3_optional: true,
    type: :string,
    json_name: "lastAttachTimestamp"

  field :last_detach_timestamp, 56_471_027,
    proto3_optional: true,
    type: :string,
    json_name: "lastDetachTimestamp"

  field :license_codes, 45_482_664, repeated: true, type: :int64, json_name: "licenseCodes"
  field :licenses, 337_642_578, repeated: true, type: :string

  field :location_hint, 350_519_505,
    proto3_optional: true,
    type: :string,
    json_name: "locationHint"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :options, 361_137_822, proto3_optional: true, type: :string

  field :physical_block_size_bytes, 420_007_943,
    proto3_optional: true,
    type: :int64,
    json_name: "physicalBlockSizeBytes"

  field :provisioned_iops, 186_769_108,
    proto3_optional: true,
    type: :int64,
    json_name: "provisionedIops"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :replica_zones, 48_438_272, repeated: true, type: :string, json_name: "replicaZones"

  field :resource_policies, 22_220_385,
    repeated: true,
    type: :string,
    json_name: "resourcePolicies"

  field :satisfies_pzs, 480_964_267, proto3_optional: true, type: :bool, json_name: "satisfiesPzs"
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :size_gb, 494_929_369, proto3_optional: true, type: :int64, json_name: "sizeGb"
  field :source_disk, 451_753_793, proto3_optional: true, type: :string, json_name: "sourceDisk"

  field :source_disk_id, 454_190_809,
    proto3_optional: true,
    type: :string,
    json_name: "sourceDiskId"

  field :source_image, 50_443_319, proto3_optional: true, type: :string, json_name: "sourceImage"

  field :source_image_encryption_key, 381_503_659,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "sourceImageEncryptionKey"

  field :source_image_id, 55_328_291,
    proto3_optional: true,
    type: :string,
    json_name: "sourceImageId"

  field :source_snapshot, 126_061_928,
    proto3_optional: true,
    type: :string,
    json_name: "sourceSnapshot"

  field :source_snapshot_encryption_key, 303_679_322,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "sourceSnapshotEncryptionKey"

  field :source_snapshot_id, 98_962_258,
    proto3_optional: true,
    type: :string,
    json_name: "sourceSnapshotId"

  field :source_storage_object, 233_052_711,
    proto3_optional: true,
    type: :string,
    json_name: "sourceStorageObject"

  field :status, 181_260_274, proto3_optional: true, type: :string
  field :type, 3_575_610, proto3_optional: true, type: :string
  field :users, 111_578_632, repeated: true, type: :string
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.DiskAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.DisksScopedList
end

defmodule Google.Cloud.Compute.V1.DiskAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.DiskAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.DiskInstantiationConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_delete, 464_761_403, proto3_optional: true, type: :bool, json_name: "autoDelete"
  field :custom_image, 184_123_149, proto3_optional: true, type: :string, json_name: "customImage"
  field :device_name, 67_541_716, proto3_optional: true, type: :string, json_name: "deviceName"

  field :instantiate_from, 393_383_903,
    proto3_optional: true,
    type: :string,
    json_name: "instantiateFrom"
end

defmodule Google.Cloud.Compute.V1.DiskList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Disk
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.DiskMoveRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :destination_zone, 131_854_653,
    proto3_optional: true,
    type: :string,
    json_name: "destinationZone"

  field :target_disk, 62_433_163, proto3_optional: true, type: :string, json_name: "targetDisk"
end

defmodule Google.Cloud.Compute.V1.DiskType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :default_disk_size_gb, 270_619_253,
    proto3_optional: true,
    type: :int64,
    json_name: "defaultDiskSizeGb"

  field :deprecated, 515_138_995,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.DeprecationStatus

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :valid_disk_size, 493_962_464,
    proto3_optional: true,
    type: :string,
    json_name: "validDiskSize"

  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.DiskTypeAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.DiskTypesScopedList
end

defmodule Google.Cloud.Compute.V1.DiskTypeAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.DiskTypeAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.DiskTypeList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.DiskType
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.DiskTypesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_types, 198_926_167,
    repeated: true,
    type: Google.Cloud.Compute.V1.DiskType,
    json_name: "diskTypes"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.DisksAddResourcePoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_policies, 22_220_385,
    repeated: true,
    type: :string,
    json_name: "resourcePolicies"
end

defmodule Google.Cloud.Compute.V1.DisksRemoveResourcePoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_policies, 22_220_385,
    repeated: true,
    type: :string,
    json_name: "resourcePolicies"
end

defmodule Google.Cloud.Compute.V1.DisksResizeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :size_gb, 494_929_369, proto3_optional: true, type: :int64, json_name: "sizeGb"
end

defmodule Google.Cloud.Compute.V1.DisksScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disks, 95_594_102, repeated: true, type: Google.Cloud.Compute.V1.Disk
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.DisplayDevice do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_display, 14_266_886,
    proto3_optional: true,
    type: :bool,
    json_name: "enableDisplay"
end

defmodule Google.Cloud.Compute.V1.DistributionPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_shape, 338_621_299, proto3_optional: true, type: :string, json_name: "targetShape"

  field :zones, 116_085_319,
    repeated: true,
    type: Google.Cloud.Compute.V1.DistributionPolicyZoneConfiguration
end

defmodule Google.Cloud.Compute.V1.DistributionPolicyZoneConfiguration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.Duration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :nanos, 104_586_303, proto3_optional: true, type: :int32
  field :seconds, 359_484_031, proto3_optional: true, type: :int64
end

defmodule Google.Cloud.Compute.V1.EnableXpnHostProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.EnableXpnResourceProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :projects_enable_xpn_resource_request_resource, 421_980_207,
    type: Google.Cloud.Compute.V1.ProjectsEnableXpnResourceRequest,
    json_name: "projectsEnableXpnResourceRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.Error do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :errors, 315_977_579, repeated: true, type: Google.Cloud.Compute.V1.Errors
end

defmodule Google.Cloud.Compute.V1.ErrorDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :error_info, 25_251_973,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ErrorInfo,
    json_name: "errorInfo"

  field :help, 3_198_785, proto3_optional: true, type: Google.Cloud.Compute.V1.Help

  field :localized_message, 404_537_155,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.LocalizedMessage,
    json_name: "localizedMessage"
end

defmodule Google.Cloud.Compute.V1.ErrorInfo.MetadatasEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.ErrorInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :domain, 284_415_172, proto3_optional: true, type: :string

  field :metadatas, 8_514_340,
    repeated: true,
    type: Google.Cloud.Compute.V1.ErrorInfo.MetadatasEntry,
    map: true

  field :reason, 138_777_156, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.Errors do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 3_059_181, proto3_optional: true, type: :string

  field :error_details, 274_653_963,
    repeated: true,
    type: Google.Cloud.Compute.V1.ErrorDetails,
    json_name: "errorDetails"

  field :location, 290_430_901, proto3_optional: true, type: :string
  field :message, 418_054_151, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ExchangedPeeringRoute do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dest_range, 381_327_712, proto3_optional: true, type: :string, json_name: "destRange"
  field :imported, 114_502_404, proto3_optional: true, type: :bool

  field :next_hop_region, 122_577_014,
    proto3_optional: true,
    type: :string,
    json_name: "nextHopRegion"

  field :priority, 445_151_652, proto3_optional: true, type: :uint32
  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ExchangedPeeringRoutesList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.ExchangedPeeringRoute
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ExpandIpCidrRangeSubnetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :subnetwork, 307_827_694, type: :string, deprecated: false

  field :subnetworks_expand_ip_cidr_range_request_resource, 477_014_110,
    type: Google.Cloud.Compute.V1.SubnetworksExpandIpCidrRangeRequest,
    json_name: "subnetworksExpandIpCidrRangeRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.Expr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :expression, 352_031_384, proto3_optional: true, type: :string
  field :location, 290_430_901, proto3_optional: true, type: :string
  field :title, 110_371_416, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ExternalVpnGateway.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.ExternalVpnGateway do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64

  field :interfaces, 12_073_562,
    repeated: true,
    type: Google.Cloud.Compute.V1.ExternalVpnGatewayInterface

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :label_fingerprint, 178_124_825,
    proto3_optional: true,
    type: :string,
    json_name: "labelFingerprint"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.ExternalVpnGateway.LabelsEntry,
    map: true

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :redundancy_type, 271_443_740,
    proto3_optional: true,
    type: :string,
    json_name: "redundancyType"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
end

defmodule Google.Cloud.Compute.V1.ExternalVpnGatewayInterface do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :uint32
  field :ip_address, 406_272_220, proto3_optional: true, type: :string, json_name: "ipAddress"
end

defmodule Google.Cloud.Compute.V1.ExternalVpnGatewayList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :etag, 3_123_477, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.ExternalVpnGateway
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.FileContentBuffer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :content, 414_659_705, proto3_optional: true, type: :string
  field :file_type, 294_346_781, proto3_optional: true, type: :string, json_name: "fileType"
end

defmodule Google.Cloud.Compute.V1.Firewall do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allowed, 162_398_632, repeated: true, type: Google.Cloud.Compute.V1.Allowed

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :denied, 275_217_307, repeated: true, type: Google.Cloud.Compute.V1.Denied
  field :description, 422_937_596, proto3_optional: true, type: :string

  field :destination_ranges, 305_699_879,
    repeated: true,
    type: :string,
    json_name: "destinationRanges"

  field :direction, 111_150_975, proto3_optional: true, type: :string
  field :disabled, 270_940_796, proto3_optional: true, type: :bool
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :log_config, 351_299_741,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.FirewallLogConfig,
    json_name: "logConfig"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string
  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :source_ranges, 200_097_658, repeated: true, type: :string, json_name: "sourceRanges"

  field :source_service_accounts, 105_100_756,
    repeated: true,
    type: :string,
    json_name: "sourceServiceAccounts"

  field :source_tags, 452_222_397, repeated: true, type: :string, json_name: "sourceTags"

  field :target_service_accounts, 457_639_710,
    repeated: true,
    type: :string,
    json_name: "targetServiceAccounts"

  field :target_tags, 62_901_767, repeated: true, type: :string, json_name: "targetTags"
end

defmodule Google.Cloud.Compute.V1.FirewallList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Firewall
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.FirewallLogConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable, 311_764_355, proto3_optional: true, type: :bool
  field :metadata, 86_866_735, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.FirewallPoliciesListAssociationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :associations, 508_736_530,
    repeated: true,
    type: Google.Cloud.Compute.V1.FirewallPolicyAssociation

  field :kind, 3_292_052, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.FirewallPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :associations, 508_736_530,
    repeated: true,
    type: Google.Cloud.Compute.V1.FirewallPolicyAssociation

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :display_name, 4_473_832, proto3_optional: true, type: :string, json_name: "displayName"
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :parent, 78_317_738, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string

  field :rule_tuple_count, 388_342_037,
    proto3_optional: true,
    type: :int32,
    json_name: "ruleTupleCount"

  field :rules, 108_873_975, repeated: true, type: Google.Cloud.Compute.V1.FirewallPolicyRule
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :self_link_with_id, 44_520_962,
    proto3_optional: true,
    type: :string,
    json_name: "selfLinkWithId"

  field :short_name, 492_051_566, proto3_optional: true, type: :string, json_name: "shortName"
end

defmodule Google.Cloud.Compute.V1.FirewallPolicyAssociation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attachment_target, 175_773_741,
    proto3_optional: true,
    type: :string,
    json_name: "attachmentTarget"

  field :display_name, 4_473_832, proto3_optional: true, type: :string, json_name: "displayName"

  field :firewall_policy_id, 357_211_849,
    proto3_optional: true,
    type: :string,
    json_name: "firewallPolicyId"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :short_name, 492_051_566, proto3_optional: true, type: :string, json_name: "shortName"
end

defmodule Google.Cloud.Compute.V1.FirewallPolicyList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.FirewallPolicy
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.FirewallPolicyRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :action, 187_661_878, proto3_optional: true, type: :string
  field :description, 422_937_596, proto3_optional: true, type: :string
  field :direction, 111_150_975, proto3_optional: true, type: :string
  field :disabled, 270_940_796, proto3_optional: true, type: :bool

  field :enable_logging, 295_396_515,
    proto3_optional: true,
    type: :bool,
    json_name: "enableLogging"

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :match, 103_668_165,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.FirewallPolicyRuleMatcher

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :rule_name, 55_286_254, proto3_optional: true, type: :string, json_name: "ruleName"

  field :rule_tuple_count, 388_342_037,
    proto3_optional: true,
    type: :int32,
    json_name: "ruleTupleCount"

  field :target_resources, 528_230_647,
    repeated: true,
    type: :string,
    json_name: "targetResources"

  field :target_secure_tags, 468_132_403,
    repeated: true,
    type: Google.Cloud.Compute.V1.FirewallPolicyRuleSecureTag,
    json_name: "targetSecureTags"

  field :target_service_accounts, 457_639_710,
    repeated: true,
    type: :string,
    json_name: "targetServiceAccounts"
end

defmodule Google.Cloud.Compute.V1.FirewallPolicyRuleMatcher do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dest_ip_ranges, 337_357_713, repeated: true, type: :string, json_name: "destIpRanges"

  field :layer4_configs, 373_534_261,
    repeated: true,
    type: Google.Cloud.Compute.V1.FirewallPolicyRuleMatcherLayer4Config,
    json_name: "layer4Configs"

  field :src_ip_ranges, 432_128_083, repeated: true, type: :string, json_name: "srcIpRanges"

  field :src_secure_tags, 508_791_302,
    repeated: true,
    type: Google.Cloud.Compute.V1.FirewallPolicyRuleSecureTag,
    json_name: "srcSecureTags"
end

defmodule Google.Cloud.Compute.V1.FirewallPolicyRuleMatcherLayer4Config do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_protocol, 475_958_960, proto3_optional: true, type: :string, json_name: "ipProtocol"
  field :ports, 106_854_418, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.FirewallPolicyRuleSecureTag do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :state, 109_757_585, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.FixedOrPercent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :calculated, 472_082_878, proto3_optional: true, type: :int32
  field :fixed, 97_445_748, proto3_optional: true, type: :int32
  field :percent, 394_814_533, proto3_optional: true, type: :int32
end

defmodule Google.Cloud.Compute.V1.ForwardingRule.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.ForwardingRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :I_p_address, 42_976_943, proto3_optional: true, type: :string, json_name: "IPAddress"
  field :I_p_protocol, 488_094_525, proto3_optional: true, type: :string, json_name: "IPProtocol"
  field :all_ports, 445_175_796, proto3_optional: true, type: :bool, json_name: "allPorts"

  field :allow_global_access, 499_409_674,
    proto3_optional: true,
    type: :bool,
    json_name: "allowGlobalAccess"

  field :backend_service, 306_946_058,
    proto3_optional: true,
    type: :string,
    json_name: "backendService"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :ip_version, 294_959_552, proto3_optional: true, type: :string, json_name: "ipVersion"

  field :is_mirroring_collector, 119_255_164,
    proto3_optional: true,
    type: :bool,
    json_name: "isMirroringCollector"

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :label_fingerprint, 178_124_825,
    proto3_optional: true,
    type: :string,
    json_name: "labelFingerprint"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.ForwardingRule.LabelsEntry,
    map: true

  field :load_balancing_scheme, 363_890_244,
    proto3_optional: true,
    type: :string,
    json_name: "loadBalancingScheme"

  field :metadata_filters, 464_725_739,
    repeated: true,
    type: Google.Cloud.Compute.V1.MetadataFilter,
    json_name: "metadataFilters"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string
  field :network_tier, 517_397_843, proto3_optional: true, type: :string, json_name: "networkTier"

  field :no_automate_dns_zone, 64_546_991,
    proto3_optional: true,
    type: :bool,
    json_name: "noAutomateDnsZone"

  field :port_range, 217_518_079, proto3_optional: true, type: :string, json_name: "portRange"
  field :ports, 106_854_418, repeated: true, type: :string

  field :psc_connection_id, 292_082_397,
    proto3_optional: true,
    type: :uint64,
    json_name: "pscConnectionId"

  field :psc_connection_status, 184_149_172,
    proto3_optional: true,
    type: :string,
    json_name: "pscConnectionStatus"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :service_directory_registrations, 223_549_694,
    repeated: true,
    type: Google.Cloud.Compute.V1.ForwardingRuleServiceDirectoryRegistration,
    json_name: "serviceDirectoryRegistrations"

  field :service_label, 417_008_874,
    proto3_optional: true,
    type: :string,
    json_name: "serviceLabel"

  field :service_name, 359_880_149, proto3_optional: true, type: :string, json_name: "serviceName"
  field :subnetwork, 307_827_694, proto3_optional: true, type: :string
  field :target, 192_835_985, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ForwardingRuleAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.ForwardingRulesScopedList
end

defmodule Google.Cloud.Compute.V1.ForwardingRuleAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.ForwardingRuleAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ForwardingRuleList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.ForwardingRule
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ForwardingRuleReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rule, 269_964_030,
    proto3_optional: true,
    type: :string,
    json_name: "forwardingRule"
end

defmodule Google.Cloud.Compute.V1.ForwardingRuleServiceDirectoryRegistration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :namespace, 178_476_379, proto3_optional: true, type: :string
  field :service, 373_540_533, proto3_optional: true, type: :string

  field :service_directory_region, 74_030_416,
    proto3_optional: true,
    type: :string,
    json_name: "serviceDirectoryRegion"
end

defmodule Google.Cloud.Compute.V1.ForwardingRulesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rules, 315_821_365,
    repeated: true,
    type: Google.Cloud.Compute.V1.ForwardingRule,
    json_name: "forwardingRules"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.GRPCHealthCheck do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :grpc_service_name, 136_533_078,
    proto3_optional: true,
    type: :string,
    json_name: "grpcServiceName"

  field :port, 3_446_913, proto3_optional: true, type: :int32
  field :port_name, 41_534_345, proto3_optional: true, type: :string, json_name: "portName"

  field :port_specification, 51_590_597,
    proto3_optional: true,
    type: :string,
    json_name: "portSpecification"
end

defmodule Google.Cloud.Compute.V1.GetAcceleratorTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :accelerator_type, 138_031_246,
    type: :string,
    json_name: "acceleratorType",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetAddressRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address, 462_920_692, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetAssociationFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :name, 3_373_707, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.GetAssociationNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetAssociationRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetAutoscalerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler, 517_258_967, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetBackendBucketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_bucket, 91_714_037, type: :string, json_name: "backendBucket", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetDiagnosticsInterconnectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect, 224_601_230, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetDiskTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_type, 93_009_052, type: :string, json_name: "diskType", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetEffectiveFirewallsInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :network_interface, 365_387_880,
    type: :string,
    json_name: "networkInterface",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetEffectiveFirewallsNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network, 232_872_494, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetEffectiveFirewallsRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network, 232_872_494, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetExternalVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :external_vpn_gateway, 109_898_629,
    type: :string,
    json_name: "externalVpnGateway",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetFirewallRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall, 511_016_192, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rule, 269_964_030,
    type: :string,
    json_name: "forwardingRule",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetFromFamilyImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :family, 328_751_972, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetGlobalAddressRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address, 462_920_692, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetGlobalForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rule, 269_964_030,
    type: :string,
    json_name: "forwardingRule",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetGlobalNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetGlobalOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetGlobalOrganizationOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :parent_id, 459_714_768, proto3_optional: true, type: :string, json_name: "parentId"
end

defmodule Google.Cloud.Compute.V1.GetGlobalPublicDelegatedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_delegated_prefix, 204_238_440,
    type: :string,
    json_name: "publicDelegatedPrefix",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetGuestAttributesInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :query_path, 368_591_164, proto3_optional: true, type: :string, json_name: "queryPath"
  field :variable_key, 164_364_828, proto3_optional: true, type: :string, json_name: "variableKey"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetHealthBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false

  field :resource_group_reference_resource, 112_951_123,
    type: Google.Cloud.Compute.V1.ResourceGroupReference,
    json_name: "resourceGroupReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check, 308_876_645, type: :string, json_name: "healthCheck", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetHealthRegionBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :resource_group_reference_resource, 112_951_123,
    type: Google.Cloud.Compute.V1.ResourceGroupReference,
    json_name: "resourceGroupReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetHealthTargetPoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_reference_resource, 292_926_060,
    type: Google.Cloud.Compute.V1.InstanceReference,
    json_name: "instanceReferenceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :target_pool, 62_796_298, type: :string, json_name: "targetPool", deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyInstanceTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyLicenseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyMachineImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyNodeGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyNodeTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyRegionDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyResourcePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicyServiceAttachmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicySnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetIamPolicySubnetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options_requested_policy_version, 499_220_029,
    proto3_optional: true,
    type: :int32,
    json_name: "optionsRequestedPolicyVersion"

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetImageFamilyViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :family, 328_751_972, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :image, 100_313_435, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetInstanceGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group, 81_095_253, type: :string, json_name: "instanceGroup", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetInstanceTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_template, 309_248_228,
    type: :string,
    json_name: "instanceTemplate",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetInterconnectAttachmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect_attachment, 308_135_284,
    type: :string,
    json_name: "interconnectAttachment",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetInterconnectLocationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect_location, 492_235_846,
    type: :string,
    json_name: "interconnectLocation",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetInterconnectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect, 224_601_230, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetLicenseCodeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :license_code, 1_467_179, type: :string, json_name: "licenseCode", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetLicenseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :license, 166_757_441, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetMachineImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :machine_image, 69_189_475, type: :string, json_name: "machineImage", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetMachineTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :machine_type, 227_711_026, type: :string, json_name: "machineType", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetNatMappingInfoRoutersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :router, 148_608_841, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetNetworkEdgeSecurityServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_edge_security_service, 157_011_879,
    type: :string,
    json_name: "networkEdgeSecurityService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network, 232_872_494, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetNodeGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_group, 469_958_146, type: :string, json_name: "nodeGroup", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetNodeTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_template, 323_154_455, type: :string, json_name: "nodeTemplate", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetNodeTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_type, 465_832_791, type: :string, json_name: "nodeType", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetPacketMirroringRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_mirroring, 22_305_996,
    type: :string,
    json_name: "packetMirroring",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetPublicAdvertisedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_advertised_prefix, 101_874_590,
    type: :string,
    json_name: "publicAdvertisedPrefix",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetPublicDelegatedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_delegated_prefix, 204_238_440,
    type: :string,
    json_name: "publicDelegatedPrefix",
    deprecated: false

  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionAutoscalerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler, 517_258_967, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionCommitmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :commitment, 482_134_805, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionDiskTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_type, 93_009_052, type: :string, json_name: "diskType", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check, 308_876_645, type: :string, json_name: "healthCheck", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionHealthCheckServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check_service, 408_374_747,
    type: :string,
    json_name: "healthCheckService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionInstanceGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group, 81_095_253, type: :string, json_name: "instanceGroup", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionNotificationEndpointRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :notification_endpoint, 376_807_017,
    type: :string,
    json_name: "notificationEndpoint",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :security_policy, 171_082_513,
    type: :string,
    json_name: "securityPolicy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionSslCertificateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :ssl_certificate, 46_443_492,
    type: :string,
    json_name: "sslCertificate",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionTargetHttpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :target_http_proxy, 206_872_421,
    type: :string,
    json_name: "targetHttpProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRegionUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :url_map, 367_020_684, type: :string, json_name: "urlMap", deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :reservation, 47_530_956, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetResourcePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :resource_policy, 159_240_835,
    type: :string,
    json_name: "resourcePolicy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRouteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :route, 108_704_329, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRouterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :router, 148_608_841, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRouterStatusRouterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :router, 148_608_841, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRuleFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :priority, 445_151_652, proto3_optional: true, type: :int32
end

defmodule Google.Cloud.Compute.V1.GetRuleNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRuleRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetRuleSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :project, 227_560_217, type: :string, deprecated: false

  field :security_policy, 171_082_513,
    type: :string,
    json_name: "securityPolicy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetScreenshotInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :security_policy, 171_082_513,
    type: :string,
    json_name: "securityPolicy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetSerialPortOutputInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :port, 3_446_913, proto3_optional: true, type: :int32
  field :project, 227_560_217, type: :string, deprecated: false
  field :start, 109_757_538, proto3_optional: true, type: :int64
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetServiceAttachmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :service_attachment, 338_957_549,
    type: :string,
    json_name: "serviceAttachment",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetShieldedInstanceIdentityInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetSnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :snapshot, 284_874_180, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetSslCertificateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :ssl_certificate, 46_443_492,
    type: :string,
    json_name: "sslCertificate",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetSslPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :ssl_policy, 295_190_213, type: :string, json_name: "sslPolicy", deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetStatusVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :vpn_gateway, 406_684_153, type: :string, json_name: "vpnGateway", deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetSubnetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :subnetwork, 307_827_694, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetTargetGrpcProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :target_grpc_proxy, 5_020_283,
    type: :string,
    json_name: "targetGrpcProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetTargetHttpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :target_http_proxy, 206_872_421,
    type: :string,
    json_name: "targetHttpProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetTargetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :target_instance, 289_769_347,
    type: :string,
    json_name: "targetInstance",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetTargetPoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :target_pool, 62_796_298, type: :string, json_name: "targetPool", deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetTargetSslProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :target_ssl_proxy, 338_795_853,
    type: :string,
    json_name: "targetSslProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetTargetTcpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :target_tcp_proxy, 503_065_442,
    type: :string,
    json_name: "targetTcpProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetTargetVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :target_vpn_gateway, 532_512_843,
    type: :string,
    json_name: "targetVpnGateway",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :url_map, 367_020_684, type: :string, json_name: "urlMap", deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :vpn_gateway, 406_684_153, type: :string, json_name: "vpnGateway", deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetVpnTunnelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :vpn_tunnel, 143_821_331, type: :string, json_name: "vpnTunnel", deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetXpnHostProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetXpnResourcesProjectsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.GetZoneOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GetZoneRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.GlobalNetworkEndpointGroupsAttachEndpointsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoints, 149_850_285,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkEndpoint,
    json_name: "networkEndpoints"
end

defmodule Google.Cloud.Compute.V1.GlobalNetworkEndpointGroupsDetachEndpointsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoints, 149_850_285,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkEndpoint,
    json_name: "networkEndpoints"
end

defmodule Google.Cloud.Compute.V1.GlobalOrganizationSetPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bindings, 403_251_854, repeated: true, type: Google.Cloud.Compute.V1.Binding
  field :etag, 3_123_477, proto3_optional: true, type: :string
  field :policy, 91_071_794, proto3_optional: true, type: Google.Cloud.Compute.V1.Policy
end

defmodule Google.Cloud.Compute.V1.GlobalSetLabelsRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.GlobalSetLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :label_fingerprint, 178_124_825,
    proto3_optional: true,
    type: :string,
    json_name: "labelFingerprint"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.GlobalSetLabelsRequest.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Compute.V1.GlobalSetPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bindings, 403_251_854, repeated: true, type: Google.Cloud.Compute.V1.Binding
  field :etag, 3_123_477, proto3_optional: true, type: :string
  field :policy, 91_071_794, proto3_optional: true, type: Google.Cloud.Compute.V1.Policy
end

defmodule Google.Cloud.Compute.V1.GuestAttributes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :query_path, 368_591_164, proto3_optional: true, type: :string, json_name: "queryPath"

  field :query_value, 157_570_874,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.GuestAttributesValue,
    json_name: "queryValue"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :variable_key, 164_364_828, proto3_optional: true, type: :string, json_name: "variableKey"

  field :variable_value, 124_582_382,
    proto3_optional: true,
    type: :string,
    json_name: "variableValue"
end

defmodule Google.Cloud.Compute.V1.GuestAttributesEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 106_079, proto3_optional: true, type: :string
  field :namespace, 178_476_379, proto3_optional: true, type: :string
  field :value, 111_972_721, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.GuestAttributesValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.GuestAttributesEntry
end

defmodule Google.Cloud.Compute.V1.GuestOsFeature do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.HTTP2HealthCheck do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :host, 3_208_616, proto3_optional: true, type: :string
  field :port, 3_446_913, proto3_optional: true, type: :int32
  field :port_name, 41_534_345, proto3_optional: true, type: :string, json_name: "portName"

  field :port_specification, 51_590_597,
    proto3_optional: true,
    type: :string,
    json_name: "portSpecification"

  field :proxy_header, 160_374_142, proto3_optional: true, type: :string, json_name: "proxyHeader"
  field :request_path, 229_403_605, proto3_optional: true, type: :string, json_name: "requestPath"
  field :response, 196_547_649, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.HTTPHealthCheck do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :host, 3_208_616, proto3_optional: true, type: :string
  field :port, 3_446_913, proto3_optional: true, type: :int32
  field :port_name, 41_534_345, proto3_optional: true, type: :string, json_name: "portName"

  field :port_specification, 51_590_597,
    proto3_optional: true,
    type: :string,
    json_name: "portSpecification"

  field :proxy_header, 160_374_142, proto3_optional: true, type: :string, json_name: "proxyHeader"
  field :request_path, 229_403_605, proto3_optional: true, type: :string, json_name: "requestPath"
  field :response, 196_547_649, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.HTTPSHealthCheck do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :host, 3_208_616, proto3_optional: true, type: :string
  field :port, 3_446_913, proto3_optional: true, type: :int32
  field :port_name, 41_534_345, proto3_optional: true, type: :string, json_name: "portName"

  field :port_specification, 51_590_597,
    proto3_optional: true,
    type: :string,
    json_name: "portSpecification"

  field :proxy_header, 160_374_142, proto3_optional: true, type: :string, json_name: "proxyHeader"
  field :request_path, 229_403_605, proto3_optional: true, type: :string, json_name: "requestPath"
  field :response, 196_547_649, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.HealthCheck do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :check_interval_sec, 345_561_006,
    proto3_optional: true,
    type: :int32,
    json_name: "checkIntervalSec"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :grpc_health_check, 85_529_574,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.GRPCHealthCheck,
    json_name: "grpcHealthCheck"

  field :healthy_threshold, 403_212_361,
    proto3_optional: true,
    type: :int32,
    json_name: "healthyThreshold"

  field :http2_health_check, 11_360_986,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HTTP2HealthCheck,
    json_name: "http2HealthCheck"

  field :http_health_check, 412_586_940,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HTTPHealthCheck,
    json_name: "httpHealthCheck"

  field :https_health_check, 436_046_905,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HTTPSHealthCheck,
    json_name: "httpsHealthCheck"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :log_config, 351_299_741,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HealthCheckLogConfig,
    json_name: "logConfig"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :ssl_health_check, 280_032_440,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SSLHealthCheck,
    json_name: "sslHealthCheck"

  field :tcp_health_check, 469_980_419,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.TCPHealthCheck,
    json_name: "tcpHealthCheck"

  field :timeout_sec, 79_994_995, proto3_optional: true, type: :int32, json_name: "timeoutSec"
  field :type, 3_575_610, proto3_optional: true, type: :string

  field :unhealthy_threshold, 227_958_480,
    proto3_optional: true,
    type: :int32,
    json_name: "unhealthyThreshold"
end

defmodule Google.Cloud.Compute.V1.HealthCheckList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.HealthCheck
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.HealthCheckLogConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable, 311_764_355, proto3_optional: true, type: :bool
end

defmodule Google.Cloud.Compute.V1.HealthCheckReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check, 308_876_645, proto3_optional: true, type: :string, json_name: "healthCheck"
end

defmodule Google.Cloud.Compute.V1.HealthCheckService do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :health_checks, 448_370_606, repeated: true, type: :string, json_name: "healthChecks"

  field :health_status_aggregation_policy, 253_163_129,
    proto3_optional: true,
    type: :string,
    json_name: "healthStatusAggregationPolicy"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :network_endpoint_groups, 29_346_733,
    repeated: true,
    type: :string,
    json_name: "networkEndpointGroups"

  field :notification_endpoints, 406_728_490,
    repeated: true,
    type: :string,
    json_name: "notificationEndpoints"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
end

defmodule Google.Cloud.Compute.V1.HealthCheckServiceReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check_service, 408_374_747,
    proto3_optional: true,
    type: :string,
    json_name: "healthCheckService"
end

defmodule Google.Cloud.Compute.V1.HealthCheckServicesList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.HealthCheckService
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.HealthChecksAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.HealthChecksScopedList
end

defmodule Google.Cloud.Compute.V1.HealthChecksAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.HealthChecksAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.HealthChecksScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_checks, 448_370_606,
    repeated: true,
    type: Google.Cloud.Compute.V1.HealthCheck,
    json_name: "healthChecks"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.HealthStatus.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.HealthStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :annotations, 112_032_548,
    repeated: true,
    type: Google.Cloud.Compute.V1.HealthStatus.AnnotationsEntry,
    map: true

  field :forwarding_rule, 269_964_030,
    proto3_optional: true,
    type: :string,
    json_name: "forwardingRule"

  field :forwarding_rule_ip, 172_250_632,
    proto3_optional: true,
    type: :string,
    json_name: "forwardingRuleIp"

  field :health_state, 324_007_150, proto3_optional: true, type: :string, json_name: "healthState"
  field :instance, 18_257_045, proto3_optional: true, type: :string
  field :ip_address, 406_272_220, proto3_optional: true, type: :string, json_name: "ipAddress"
  field :port, 3_446_913, proto3_optional: true, type: :int32
  field :weight, 282_149_496, proto3_optional: true, type: :string
  field :weight_error, 522_501_505, proto3_optional: true, type: :string, json_name: "weightError"
end

defmodule Google.Cloud.Compute.V1.HealthStatusForNetworkEndpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BackendServiceReference,
    json_name: "backendService"

  field :forwarding_rule, 269_964_030,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ForwardingRuleReference,
    json_name: "forwardingRule"

  field :health_check, 308_876_645,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HealthCheckReference,
    json_name: "healthCheck"

  field :health_check_service, 408_374_747,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HealthCheckServiceReference,
    json_name: "healthCheckService"

  field :health_state, 324_007_150, proto3_optional: true, type: :string, json_name: "healthState"
end

defmodule Google.Cloud.Compute.V1.Help do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :links, 102_977_465, repeated: true, type: Google.Cloud.Compute.V1.HelpLink
end

defmodule Google.Cloud.Compute.V1.HelpLink do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :url, 116_079, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.HostRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :hosts, 99_467_211, repeated: true, type: :string
  field :path_matcher, 337_813_272, proto3_optional: true, type: :string, json_name: "pathMatcher"
end

defmodule Google.Cloud.Compute.V1.HttpFaultAbort do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :http_status, 468_949_897, proto3_optional: true, type: :uint32, json_name: "httpStatus"
  field :percentage, 151_909_018, proto3_optional: true, type: :double
end

defmodule Google.Cloud.Compute.V1.HttpFaultDelay do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fixed_delay, 317_037_816,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.Duration,
    json_name: "fixedDelay"

  field :percentage, 151_909_018, proto3_optional: true, type: :double
end

defmodule Google.Cloud.Compute.V1.HttpFaultInjection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :abort, 92_611_376, proto3_optional: true, type: Google.Cloud.Compute.V1.HttpFaultAbort
  field :delay, 95_467_907, proto3_optional: true, type: Google.Cloud.Compute.V1.HttpFaultDelay
end

defmodule Google.Cloud.Compute.V1.HttpHeaderAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :request_headers_to_add, 72_111_974,
    repeated: true,
    type: Google.Cloud.Compute.V1.HttpHeaderOption,
    json_name: "requestHeadersToAdd"

  field :request_headers_to_remove, 218_425_247,
    repeated: true,
    type: :string,
    json_name: "requestHeadersToRemove"

  field :response_headers_to_add, 32_136_052,
    repeated: true,
    type: Google.Cloud.Compute.V1.HttpHeaderOption,
    json_name: "responseHeadersToAdd"

  field :response_headers_to_remove, 75_415_761,
    repeated: true,
    type: :string,
    json_name: "responseHeadersToRemove"
end

defmodule Google.Cloud.Compute.V1.HttpHeaderMatch do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exact_match, 457_641_093, proto3_optional: true, type: :string, json_name: "exactMatch"
  field :header_name, 110_223_613, proto3_optional: true, type: :string, json_name: "headerName"
  field :invert_match, 501_130_268, proto3_optional: true, type: :bool, json_name: "invertMatch"
  field :prefix_match, 257_898_968, proto3_optional: true, type: :string, json_name: "prefixMatch"
  field :present_match, 67_435_841, proto3_optional: true, type: :bool, json_name: "presentMatch"

  field :range_match, 97_244_227,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.Int64RangeMatch,
    json_name: "rangeMatch"

  field :regex_match, 107_387_853, proto3_optional: true, type: :string, json_name: "regexMatch"
  field :suffix_match, 426_488_663, proto3_optional: true, type: :string, json_name: "suffixMatch"
end

defmodule Google.Cloud.Compute.V1.HttpHeaderOption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header_name, 110_223_613, proto3_optional: true, type: :string, json_name: "headerName"
  field :header_value, 203_094_335, proto3_optional: true, type: :string, json_name: "headerValue"
  field :replace, 20_755_124, proto3_optional: true, type: :bool
end

defmodule Google.Cloud.Compute.V1.HttpQueryParameterMatch do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exact_match, 457_641_093, proto3_optional: true, type: :string, json_name: "exactMatch"
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :present_match, 67_435_841, proto3_optional: true, type: :bool, json_name: "presentMatch"
  field :regex_match, 107_387_853, proto3_optional: true, type: :string, json_name: "regexMatch"
end

defmodule Google.Cloud.Compute.V1.HttpRedirectAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :host_redirect, 107_417_747,
    proto3_optional: true,
    type: :string,
    json_name: "hostRedirect"

  field :https_redirect, 170_260_656,
    proto3_optional: true,
    type: :bool,
    json_name: "httpsRedirect"

  field :path_redirect, 272_342_710,
    proto3_optional: true,
    type: :string,
    json_name: "pathRedirect"

  field :prefix_redirect, 446_184_169,
    proto3_optional: true,
    type: :string,
    json_name: "prefixRedirect"

  field :redirect_response_code, 436_710_408,
    proto3_optional: true,
    type: :string,
    json_name: "redirectResponseCode"

  field :strip_query, 52_284_641, proto3_optional: true, type: :bool, json_name: "stripQuery"
end

defmodule Google.Cloud.Compute.V1.HttpRetryPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :num_retries, 251_680_141, proto3_optional: true, type: :uint32, json_name: "numRetries"

  field :per_try_timeout, 280_041_147,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.Duration,
    json_name: "perTryTimeout"

  field :retry_conditions, 28_815_535, repeated: true, type: :string, json_name: "retryConditions"
end

defmodule Google.Cloud.Compute.V1.HttpRouteAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cors_policy, 398_943_748,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CorsPolicy,
    json_name: "corsPolicy"

  field :fault_injection_policy, 412_781_079,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpFaultInjection,
    json_name: "faultInjectionPolicy"

  field :max_stream_duration, 61_428_376,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.Duration,
    json_name: "maxStreamDuration"

  field :request_mirror_policy, 220_196_866,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.RequestMirrorPolicy,
    json_name: "requestMirrorPolicy"

  field :retry_policy, 56_799_913,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpRetryPolicy,
    json_name: "retryPolicy"

  field :timeout, 296_701_281, proto3_optional: true, type: Google.Cloud.Compute.V1.Duration

  field :url_rewrite, 273_333_948,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.UrlRewrite,
    json_name: "urlRewrite"

  field :weighted_backend_services, 337_028_049,
    repeated: true,
    type: Google.Cloud.Compute.V1.WeightedBackendService,
    json_name: "weightedBackendServices"
end

defmodule Google.Cloud.Compute.V1.HttpRouteRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :header_action, 328_077_352,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpHeaderAction,
    json_name: "headerAction"

  field :match_rules, 376_200_701,
    repeated: true,
    type: Google.Cloud.Compute.V1.HttpRouteRuleMatch,
    json_name: "matchRules"

  field :priority, 445_151_652, proto3_optional: true, type: :int32

  field :route_action, 424_563_948,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpRouteAction,
    json_name: "routeAction"

  field :service, 373_540_533, proto3_optional: true, type: :string

  field :url_redirect, 405_147_820,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpRedirectAction,
    json_name: "urlRedirect"
end

defmodule Google.Cloud.Compute.V1.HttpRouteRuleMatch do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :full_path_match, 214_598_875,
    proto3_optional: true,
    type: :string,
    json_name: "fullPathMatch"

  field :header_matches, 361_903_489,
    repeated: true,
    type: Google.Cloud.Compute.V1.HttpHeaderMatch,
    json_name: "headerMatches"

  field :ignore_case, 464_324_989, proto3_optional: true, type: :bool, json_name: "ignoreCase"

  field :metadata_filters, 464_725_739,
    repeated: true,
    type: Google.Cloud.Compute.V1.MetadataFilter,
    json_name: "metadataFilters"

  field :prefix_match, 257_898_968, proto3_optional: true, type: :string, json_name: "prefixMatch"

  field :query_parameter_matches, 286_231_270,
    repeated: true,
    type: Google.Cloud.Compute.V1.HttpQueryParameterMatch,
    json_name: "queryParameterMatches"

  field :regex_match, 107_387_853, proto3_optional: true, type: :string, json_name: "regexMatch"
end

defmodule Google.Cloud.Compute.V1.Image.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.Image do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :architecture, 302_803_283, proto3_optional: true, type: :string

  field :archive_size_bytes, 381_093_450,
    proto3_optional: true,
    type: :int64,
    json_name: "archiveSizeBytes"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :deprecated, 515_138_995,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.DeprecationStatus

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :disk_size_gb, 316_263_735, proto3_optional: true, type: :int64, json_name: "diskSizeGb"
  field :family, 328_751_972, proto3_optional: true, type: :string

  field :guest_os_features, 79_294_545,
    repeated: true,
    type: Google.Cloud.Compute.V1.GuestOsFeature,
    json_name: "guestOsFeatures"

  field :id, 3355, proto3_optional: true, type: :uint64

  field :image_encryption_key, 379_512_583,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "imageEncryptionKey"

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :label_fingerprint, 178_124_825,
    proto3_optional: true,
    type: :string,
    json_name: "labelFingerprint"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.Image.LabelsEntry,
    map: true

  field :license_codes, 45_482_664, repeated: true, type: :int64, json_name: "licenseCodes"
  field :licenses, 337_642_578, repeated: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :raw_disk, 503_113_556,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.RawDisk,
    json_name: "rawDisk"

  field :satisfies_pzs, 480_964_267, proto3_optional: true, type: :bool, json_name: "satisfiesPzs"
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :shielded_instance_initial_state, 192_356_867,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InitialStateConfig,
    json_name: "shieldedInstanceInitialState"

  field :source_disk, 451_753_793, proto3_optional: true, type: :string, json_name: "sourceDisk"

  field :source_disk_encryption_key, 531_501_153,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "sourceDiskEncryptionKey"

  field :source_disk_id, 454_190_809,
    proto3_optional: true,
    type: :string,
    json_name: "sourceDiskId"

  field :source_image, 50_443_319, proto3_optional: true, type: :string, json_name: "sourceImage"

  field :source_image_encryption_key, 381_503_659,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "sourceImageEncryptionKey"

  field :source_image_id, 55_328_291,
    proto3_optional: true,
    type: :string,
    json_name: "sourceImageId"

  field :source_snapshot, 126_061_928,
    proto3_optional: true,
    type: :string,
    json_name: "sourceSnapshot"

  field :source_snapshot_encryption_key, 303_679_322,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "sourceSnapshotEncryptionKey"

  field :source_snapshot_id, 98_962_258,
    proto3_optional: true,
    type: :string,
    json_name: "sourceSnapshotId"

  field :source_type, 452_245_726, proto3_optional: true, type: :string, json_name: "sourceType"
  field :status, 181_260_274, proto3_optional: true, type: :string

  field :storage_locations, 328_005_274,
    repeated: true,
    type: :string,
    json_name: "storageLocations"
end

defmodule Google.Cloud.Compute.V1.ImageFamilyView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :image, 100_313_435, proto3_optional: true, type: Google.Cloud.Compute.V1.Image
end

defmodule Google.Cloud.Compute.V1.ImageList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Image
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InitialStateConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dbs, 99253, repeated: true, type: Google.Cloud.Compute.V1.FileContentBuffer
  field :dbxs, 3_077_113, repeated: true, type: Google.Cloud.Compute.V1.FileContentBuffer
  field :keks, 3_288_130, repeated: true, type: Google.Cloud.Compute.V1.FileContentBuffer
  field :pk, 3579, proto3_optional: true, type: Google.Cloud.Compute.V1.FileContentBuffer
end

defmodule Google.Cloud.Compute.V1.InsertAddressRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address_resource, 483_888_121,
    type: Google.Cloud.Compute.V1.Address,
    json_name: "addressResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertAutoscalerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler_resource, 207_616_118,
    type: Google.Cloud.Compute.V1.Autoscaler,
    json_name: "autoscalerResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertBackendBucketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_bucket_resource, 380_757_784,
    type: Google.Cloud.Compute.V1.BackendBucket,
    json_name: "backendBucketResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service_resource, 347_586_723,
    type: Google.Cloud.Compute.V1.BackendService,
    json_name: "backendServiceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_resource, 25_880_688,
    type: Google.Cloud.Compute.V1.Disk,
    json_name: "diskResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :source_image, 50_443_319, proto3_optional: true, type: :string, json_name: "sourceImage"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertExternalVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :external_vpn_gateway_resource, 486_813_576,
    type: Google.Cloud.Compute.V1.ExternalVpnGateway,
    json_name: "externalVpnGatewayResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy_resource, 495_049_532,
    type: Google.Cloud.Compute.V1.FirewallPolicy,
    json_name: "firewallPolicyResource",
    deprecated: false

  field :parent_id, 459_714_768, type: :string, json_name: "parentId", deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertFirewallRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_resource, 41_425_005,
    type: Google.Cloud.Compute.V1.Firewall,
    json_name: "firewallResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rule_resource, 301_211_695,
    type: Google.Cloud.Compute.V1.ForwardingRule,
    json_name: "forwardingRuleResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertGlobalAddressRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address_resource, 483_888_121,
    type: Google.Cloud.Compute.V1.Address,
    json_name: "addressResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertGlobalForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rule_resource, 301_211_695,
    type: Google.Cloud.Compute.V1.ForwardingRule,
    json_name: "forwardingRuleResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertGlobalNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_group_resource, 525_788_839,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroup,
    json_name: "networkEndpointGroupResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertGlobalPublicDelegatedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_delegated_prefix_resource, 47_594_501,
    type: Google.Cloud.Compute.V1.PublicDelegatedPrefix,
    json_name: "publicDelegatedPrefixResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check_resource, 201_925_032,
    type: Google.Cloud.Compute.V1.HealthCheck,
    json_name: "healthCheckResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :force_create, 197_723_344, proto3_optional: true, type: :bool, json_name: "forceCreate"

  field :image_resource, 371_171_954,
    type: Google.Cloud.Compute.V1.Image,
    json_name: "imageResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager_resource, 261_063_946,
    type: Google.Cloud.Compute.V1.InstanceGroupManager,
    json_name: "instanceGroupManagerResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertInstanceGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_resource, 286_612_152,
    type: Google.Cloud.Compute.V1.InstanceGroup,
    json_name: "instanceGroupResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_resource, 215_988_344,
    type: Google.Cloud.Compute.V1.Instance,
    json_name: "instanceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :source_instance_template, 332_423_616,
    proto3_optional: true,
    type: :string,
    json_name: "sourceInstanceTemplate"

  field :source_machine_image, 21_769_791,
    proto3_optional: true,
    type: :string,
    json_name: "sourceMachineImage"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertInstanceTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_template_resource, 10_679_561,
    type: Google.Cloud.Compute.V1.InstanceTemplate,
    json_name: "instanceTemplateResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertInterconnectAttachmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect_attachment_resource, 212_341_369,
    type: Google.Cloud.Compute.V1.InterconnectAttachment,
    json_name: "interconnectAttachmentResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :validate_only, 242_744_629, proto3_optional: true, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Compute.V1.InsertInterconnectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect_resource, 397_611_167,
    type: Google.Cloud.Compute.V1.Interconnect,
    json_name: "interconnectResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertLicenseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :license_resource, 437_955_148,
    type: Google.Cloud.Compute.V1.License,
    json_name: "licenseResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertMachineImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :machine_image_resource, 60_740_970,
    type: Google.Cloud.Compute.V1.MachineImage,
    json_name: "machineImageResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :source_instance, 396_315_705,
    proto3_optional: true,
    type: :string,
    json_name: "sourceInstance"
end

defmodule Google.Cloud.Compute.V1.InsertNetworkEdgeSecurityServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_edge_security_service_resource, 477_548_966,
    type: Google.Cloud.Compute.V1.NetworkEdgeSecurityService,
    json_name: "networkEdgeSecurityServiceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :validate_only, 242_744_629, proto3_optional: true, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Compute.V1.InsertNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_group_resource, 525_788_839,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroup,
    json_name: "networkEndpointGroupResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy_resource, 495_049_532,
    type: Google.Cloud.Compute.V1.FirewallPolicy,
    json_name: "firewallPolicyResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_resource, 122_105_599,
    type: Google.Cloud.Compute.V1.Network,
    json_name: "networkResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertNodeGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :initial_node_count, 71_951_469,
    type: :int32,
    json_name: "initialNodeCount",
    deprecated: false

  field :node_group_resource, 505_321_899,
    type: Google.Cloud.Compute.V1.NodeGroup,
    json_name: "nodeGroupResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertNodeTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_template_resource, 127_364_406,
    type: Google.Cloud.Compute.V1.NodeTemplate,
    json_name: "nodeTemplateResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertPacketMirroringRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_mirroring_resource, 493_501_985,
    type: Google.Cloud.Compute.V1.PacketMirroring,
    json_name: "packetMirroringResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertPublicAdvertisedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_advertised_prefix_resource, 233_614_223,
    type: Google.Cloud.Compute.V1.PublicAdvertisedPrefix,
    json_name: "publicAdvertisedPrefixResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertPublicDelegatedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_delegated_prefix_resource, 47_594_501,
    type: Google.Cloud.Compute.V1.PublicDelegatedPrefix,
    json_name: "publicDelegatedPrefixResource",
    deprecated: false

  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertRegionAutoscalerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler_resource, 207_616_118,
    type: Google.Cloud.Compute.V1.Autoscaler,
    json_name: "autoscalerResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertRegionBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service_resource, 347_586_723,
    type: Google.Cloud.Compute.V1.BackendService,
    json_name: "backendServiceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertRegionCommitmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :commitment_resource, 244_240_888,
    type: Google.Cloud.Compute.V1.Commitment,
    json_name: "commitmentResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertRegionDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_resource, 25_880_688,
    type: Google.Cloud.Compute.V1.Disk,
    json_name: "diskResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :source_image, 50_443_319, proto3_optional: true, type: :string, json_name: "sourceImage"
end

defmodule Google.Cloud.Compute.V1.InsertRegionHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check_resource, 201_925_032,
    type: Google.Cloud.Compute.V1.HealthCheck,
    json_name: "healthCheckResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertRegionHealthCheckServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check_service_resource, 477_367_794,
    type: Google.Cloud.Compute.V1.HealthCheckService,
    json_name: "healthCheckServiceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager_resource, 261_063_946,
    type: Google.Cloud.Compute.V1.InstanceGroupManager,
    json_name: "instanceGroupManagerResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertRegionNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_group_resource, 525_788_839,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroup,
    json_name: "networkEndpointGroupResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy_resource, 495_049_532,
    type: Google.Cloud.Compute.V1.FirewallPolicy,
    json_name: "firewallPolicyResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertRegionNotificationEndpointRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :notification_endpoint_resource, 338_459_940,
    type: Google.Cloud.Compute.V1.NotificationEndpoint,
    json_name: "notificationEndpointResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.InsertRegionSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :security_policy_resource, 216_159_612,
    type: Google.Cloud.Compute.V1.SecurityPolicy,
    json_name: "securityPolicyResource",
    deprecated: false

  field :validate_only, 242_744_629, proto3_optional: true, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Compute.V1.InsertRegionSslCertificateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :ssl_certificate_resource, 180_709_897,
    type: Google.Cloud.Compute.V1.SslCertificate,
    json_name: "sslCertificateResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertRegionTargetHttpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_http_proxy_resource, 24_696_744,
    type: Google.Cloud.Compute.V1.TargetHttpProxy,
    json_name: "targetHttpProxyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertRegionTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxy_resource, 433_657_473,
    type: Google.Cloud.Compute.V1.TargetHttpsProxy,
    json_name: "targetHttpsProxyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertRegionUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :url_map_resource, 168_675_425,
    type: Google.Cloud.Compute.V1.UrlMap,
    json_name: "urlMapResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :reservation_resource, 285_030_177,
    type: Google.Cloud.Compute.V1.Reservation,
    json_name: "reservationResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertResourcePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :resource_policy_resource, 76_826_186,
    type: Google.Cloud.Compute.V1.ResourcePolicy,
    json_name: "resourcePolicyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertRouteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :route_resource, 225_428_804,
    type: Google.Cloud.Compute.V1.Route,
    json_name: "routeResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertRouterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :router_resource, 155_222_084,
    type: Google.Cloud.Compute.V1.Router,
    json_name: "routerResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :security_policy_resource, 216_159_612,
    type: Google.Cloud.Compute.V1.SecurityPolicy,
    json_name: "securityPolicyResource",
    deprecated: false

  field :validate_only, 242_744_629, proto3_optional: true, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Compute.V1.InsertServiceAttachmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :service_attachment_resource, 472_980_256,
    type: Google.Cloud.Compute.V1.ServiceAttachment,
    json_name: "serviceAttachmentResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertSnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :snapshot_resource, 481_319_977,
    type: Google.Cloud.Compute.V1.Snapshot,
    json_name: "snapshotResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertSslCertificateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :ssl_certificate_resource, 180_709_897,
    type: Google.Cloud.Compute.V1.SslCertificate,
    json_name: "sslCertificateResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertSslPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :ssl_policy_resource, 274_891_848,
    type: Google.Cloud.Compute.V1.SslPolicy,
    json_name: "sslPolicyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertSubnetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :subnetwork_resource, 42_233_151,
    type: Google.Cloud.Compute.V1.Subnetwork,
    json_name: "subnetworkResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertTargetGrpcProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_grpc_proxy_resource, 328_922_450,
    type: Google.Cloud.Compute.V1.TargetGrpcProxy,
    json_name: "targetGrpcProxyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertTargetHttpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_http_proxy_resource, 24_696_744,
    type: Google.Cloud.Compute.V1.TargetHttpProxy,
    json_name: "targetHttpProxyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxy_resource, 433_657_473,
    type: Google.Cloud.Compute.V1.TargetHttpsProxy,
    json_name: "targetHttpsProxyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertTargetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_instance_resource, 430_453_066,
    type: Google.Cloud.Compute.V1.TargetInstance,
    json_name: "targetInstanceResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertTargetPoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_pool_resource, 101_281_443,
    type: Google.Cloud.Compute.V1.TargetPool,
    json_name: "targetPoolResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertTargetSslProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_ssl_proxy_resource, 142_016_192,
    type: Google.Cloud.Compute.V1.TargetSslProxy,
    json_name: "targetSslProxyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertTargetTcpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_tcp_proxy_resource, 145_913_931,
    type: Google.Cloud.Compute.V1.TargetTcpProxy,
    json_name: "targetTcpProxyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertTargetVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_vpn_gateway_resource, 498_050,
    type: Google.Cloud.Compute.V1.TargetVpnGateway,
    json_name: "targetVpnGatewayResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :url_map_resource, 168_675_425,
    type: Google.Cloud.Compute.V1.UrlMap,
    json_name: "urlMapResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :vpn_gateway_resource, 182_688_660,
    type: Google.Cloud.Compute.V1.VpnGateway,
    json_name: "vpnGatewayResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.InsertVpnTunnelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :vpn_tunnel_resource, 86_839_482,
    type: Google.Cloud.Compute.V1.VpnTunnel,
    json_name: "vpnTunnelResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.Instance.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.Instance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :advanced_machine_features, 409_646_002,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.AdvancedMachineFeatures,
    json_name: "advancedMachineFeatures"

  field :can_ip_forward, 467_731_324,
    proto3_optional: true,
    type: :bool,
    json_name: "canIpForward"

  field :confidential_instance_config, 490_637_685,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ConfidentialInstanceConfig,
    json_name: "confidentialInstanceConfig"

  field :cpu_platform, 410_285_354, proto3_optional: true, type: :string, json_name: "cpuPlatform"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :deletion_protection, 458_014_698,
    proto3_optional: true,
    type: :bool,
    json_name: "deletionProtection"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :disks, 95_594_102, repeated: true, type: Google.Cloud.Compute.V1.AttachedDisk

  field :display_device, 258_933_875,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.DisplayDevice,
    json_name: "displayDevice"

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string

  field :guest_accelerators, 463_595_119,
    repeated: true,
    type: Google.Cloud.Compute.V1.AcceleratorConfig,
    json_name: "guestAccelerators"

  field :hostname, 237_067_315, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64

  field :key_revocation_action_type, 235_941_474,
    proto3_optional: true,
    type: :string,
    json_name: "keyRevocationActionType"

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :label_fingerprint, 178_124_825,
    proto3_optional: true,
    type: :string,
    json_name: "labelFingerprint"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.Instance.LabelsEntry,
    map: true

  field :last_start_timestamp, 443_830_736,
    proto3_optional: true,
    type: :string,
    json_name: "lastStartTimestamp"

  field :last_stop_timestamp, 412_823_010,
    proto3_optional: true,
    type: :string,
    json_name: "lastStopTimestamp"

  field :last_suspended_timestamp, 356_275_337,
    proto3_optional: true,
    type: :string,
    json_name: "lastSuspendedTimestamp"

  field :machine_type, 227_711_026, proto3_optional: true, type: :string, json_name: "machineType"
  field :metadata, 86_866_735, proto3_optional: true, type: Google.Cloud.Compute.V1.Metadata

  field :min_cpu_platform, 242_912_759,
    proto3_optional: true,
    type: :string,
    json_name: "minCpuPlatform"

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :network_interfaces, 52_735_243,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkInterface,
    json_name: "networkInterfaces"

  field :network_performance_config, 398_330_850,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NetworkPerformanceConfig,
    json_name: "networkPerformanceConfig"

  field :params, 78_313_862, proto3_optional: true, type: Google.Cloud.Compute.V1.InstanceParams

  field :private_ipv6_google_access, 48_277_006,
    proto3_optional: true,
    type: :string,
    json_name: "privateIpv6GoogleAccess"

  field :reservation_affinity, 157_850_683,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ReservationAffinity,
    json_name: "reservationAffinity"

  field :resource_policies, 22_220_385,
    repeated: true,
    type: :string,
    json_name: "resourcePolicies"

  field :satisfies_pzs, 480_964_267, proto3_optional: true, type: :bool, json_name: "satisfiesPzs"
  field :scheduling, 386_688_404, proto3_optional: true, type: Google.Cloud.Compute.V1.Scheduling
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :service_accounts, 277_537_328,
    repeated: true,
    type: Google.Cloud.Compute.V1.ServiceAccount,
    json_name: "serviceAccounts"

  field :shielded_instance_config, 12_862_901,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig"

  field :shielded_instance_integrity_policy, 163_696_919,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ShieldedInstanceIntegrityPolicy,
    json_name: "shieldedInstanceIntegrityPolicy"

  field :source_machine_image, 21_769_791,
    proto3_optional: true,
    type: :string,
    json_name: "sourceMachineImage"

  field :source_machine_image_encryption_key, 192_839_075,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "sourceMachineImageEncryptionKey"

  field :start_restricted, 123_693_144,
    proto3_optional: true,
    type: :bool,
    json_name: "startRestricted"

  field :status, 181_260_274, proto3_optional: true, type: :string

  field :status_message, 297_428_154,
    proto3_optional: true,
    type: :string,
    json_name: "statusMessage"

  field :tags, 3_552_281, proto3_optional: true, type: Google.Cloud.Compute.V1.Tags
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.InstancesScopedList
end

defmodule Google.Cloud.Compute.V1.InstanceAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceGroup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :named_ports, 427_598_732,
    repeated: true,
    type: Google.Cloud.Compute.V1.NamedPort,
    json_name: "namedPorts"

  field :network, 232_872_494, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :size, 3_530_753, proto3_optional: true, type: :int32
  field :subnetwork, 307_827_694, proto3_optional: true, type: :string
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceGroupAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.InstanceGroupsScopedList
end

defmodule Google.Cloud.Compute.V1.InstanceGroupAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceGroupAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceGroupList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.InstanceGroup
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManager do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_healing_policies, 456_799_109,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceGroupManagerAutoHealingPolicy,
    json_name: "autoHealingPolicies"

  field :base_instance_name, 389_106_439,
    proto3_optional: true,
    type: :string,
    json_name: "baseInstanceName"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :current_actions, 164_045_879,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InstanceGroupManagerActionsSummary,
    json_name: "currentActions"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :distribution_policy, 534_558_541,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.DistributionPolicy,
    json_name: "distributionPolicy"

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64

  field :instance_group, 81_095_253,
    proto3_optional: true,
    type: :string,
    json_name: "instanceGroup"

  field :instance_template, 309_248_228,
    proto3_optional: true,
    type: :string,
    json_name: "instanceTemplate"

  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :named_ports, 427_598_732,
    repeated: true,
    type: Google.Cloud.Compute.V1.NamedPort,
    json_name: "namedPorts"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :stateful_policy, 47_538_565,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.StatefulPolicy,
    json_name: "statefulPolicy"

  field :status, 181_260_274,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InstanceGroupManagerStatus

  field :target_pools, 336_072_617, repeated: true, type: :string, json_name: "targetPools"
  field :target_size, 62_880_239, proto3_optional: true, type: :int32, json_name: "targetSize"

  field :update_policy, 175_809_896,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InstanceGroupManagerUpdatePolicy,
    json_name: "updatePolicy"

  field :versions, 162_430_619,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceGroupManagerVersion

  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerActionsSummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :abandoning, 440_023_373, proto3_optional: true, type: :int32
  field :creating, 209_809_081, proto3_optional: true, type: :int32

  field :creating_without_retries, 369_916_745,
    proto3_optional: true,
    type: :int32,
    json_name: "creatingWithoutRetries"

  field :deleting, 282_846_120, proto3_optional: true, type: :int32
  field :none, 3_387_192, proto3_optional: true, type: :int32
  field :recreating, 339_057_132, proto3_optional: true, type: :int32
  field :refreshing, 215_044_903, proto3_optional: true, type: :int32
  field :restarting, 372_312_947, proto3_optional: true, type: :int32
  field :resuming, 201_100_714, proto3_optional: true, type: :int32
  field :starting, 243_064_896, proto3_optional: true, type: :int32
  field :stopping, 105_035_892, proto3_optional: true, type: :int32
  field :suspending, 29_113_894, proto3_optional: true, type: :int32
  field :verifying, 451_612_873, proto3_optional: true, type: :int32
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.InstanceGroupManagersScopedList
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceGroupManagerAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerAutoHealingPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check, 308_876_645, proto3_optional: true, type: :string, json_name: "healthCheck"

  field :initial_delay_sec, 263_207_002,
    proto3_optional: true,
    type: :int32,
    json_name: "initialDelaySec"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.InstanceGroupManager
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler, 517_258_967, proto3_optional: true, type: :string
  field :is_stable, 108_410_864, proto3_optional: true, type: :bool, json_name: "isStable"

  field :stateful, 244_462_412,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InstanceGroupManagerStatusStateful

  field :version_target, 289_386_200,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InstanceGroupManagerStatusVersionTarget,
    json_name: "versionTarget"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerStatusStateful do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :has_stateful_config, 110_474_224,
    proto3_optional: true,
    type: :bool,
    json_name: "hasStatefulConfig"

  field :per_instance_configs, 526_265_001,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InstanceGroupManagerStatusStatefulPerInstanceConfigs,
    json_name: "perInstanceConfigs"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerStatusStatefulPerInstanceConfigs do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :all_effective, 516_540_553, proto3_optional: true, type: :bool, json_name: "allEffective"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerStatusVersionTarget do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :is_reached, 433_209_149, proto3_optional: true, type: :bool, json_name: "isReached"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerUpdatePolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_redistribution_type, 292_630_424,
    proto3_optional: true,
    type: :string,
    json_name: "instanceRedistributionType"

  field :max_surge, 302_572_691,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.FixedOrPercent,
    json_name: "maxSurge"

  field :max_unavailable, 404_940_277,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.FixedOrPercent,
    json_name: "maxUnavailable"

  field :minimal_action, 270_567_060,
    proto3_optional: true,
    type: :string,
    json_name: "minimalAction"

  field :most_disruptive_allowed_action, 66_103_053,
    proto3_optional: true,
    type: :string,
    json_name: "mostDisruptiveAllowedAction"

  field :replacement_method, 505_931_694,
    proto3_optional: true,
    type: :string,
    json_name: "replacementMethod"

  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagerVersion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_template, 309_248_228,
    proto3_optional: true,
    type: :string,
    json_name: "instanceTemplate"

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :target_size, 62_880_239,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.FixedOrPercent,
    json_name: "targetSize"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersAbandonInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersApplyUpdatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :all_instances, 403_676_512, proto3_optional: true, type: :bool, json_name: "allInstances"
  field :instances, 29_097_598, repeated: true, type: :string

  field :minimal_action, 270_567_060,
    proto3_optional: true,
    type: :string,
    json_name: "minimalAction"

  field :most_disruptive_allowed_action, 66_103_053,
    proto3_optional: true,
    type: :string,
    json_name: "mostDisruptiveAllowedAction"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersCreateInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: Google.Cloud.Compute.V1.PerInstanceConfig
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersDeleteInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: :string

  field :skip_instances_on_validation_error, 40_631_073,
    proto3_optional: true,
    type: :bool,
    json_name: "skipInstancesOnValidationError"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersDeletePerInstanceConfigsReq do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :names, 104_585_032, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersListErrorsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceManagedByIgmError

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersListManagedInstancesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :managed_instances, 336_219_614,
    repeated: true,
    type: Google.Cloud.Compute.V1.ManagedInstance,
    json_name: "managedInstances"

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersListPerInstanceConfigsResp do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.PerInstanceConfig

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersPatchPerInstanceConfigsReq do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :per_instance_configs, 526_265_001,
    repeated: true,
    type: Google.Cloud.Compute.V1.PerInstanceConfig,
    json_name: "perInstanceConfigs"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersRecreateInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_managers, 214_072_592,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceGroupManager,
    json_name: "instanceGroupManagers"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersSetInstanceTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_template, 309_248_228,
    proto3_optional: true,
    type: :string,
    json_name: "instanceTemplate"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersSetTargetPoolsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :target_pools, 336_072_617, repeated: true, type: :string, json_name: "targetPools"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagersUpdatePerInstanceConfigsReq do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :per_instance_configs, 526_265_001,
    repeated: true,
    type: Google.Cloud.Compute.V1.PerInstanceConfig,
    json_name: "perInstanceConfigs"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupsAddInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: Google.Cloud.Compute.V1.InstanceReference
end

defmodule Google.Cloud.Compute.V1.InstanceGroupsListInstances do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.InstanceWithNamedPorts
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceGroupsListInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_state, 92_223_591,
    proto3_optional: true,
    type: :string,
    json_name: "instanceState"
end

defmodule Google.Cloud.Compute.V1.InstanceGroupsRemoveInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: Google.Cloud.Compute.V1.InstanceReference
end

defmodule Google.Cloud.Compute.V1.InstanceGroupsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_groups, 366_469_310,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceGroup,
    json_name: "instanceGroups"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceGroupsSetNamedPortsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string

  field :named_ports, 427_598_732,
    repeated: true,
    type: Google.Cloud.Compute.V1.NamedPort,
    json_name: "namedPorts"
end

defmodule Google.Cloud.Compute.V1.InstanceList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Instance
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceListReferrers do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Reference
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceManagedByIgmError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :error, 96_784_904,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InstanceManagedByIgmErrorManagedInstanceError

  field :instance_action_details, 292_224_547,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InstanceManagedByIgmErrorInstanceActionDetails,
    json_name: "instanceActionDetails"

  field :timestamp, 55_126_294, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceManagedByIgmErrorInstanceActionDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :action, 187_661_878, proto3_optional: true, type: :string
  field :instance, 18_257_045, proto3_optional: true, type: :string

  field :version, 351_608_024,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ManagedInstanceVersion
end

defmodule Google.Cloud.Compute.V1.InstanceManagedByIgmErrorManagedInstanceError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 3_059_181, proto3_optional: true, type: :string
  field :message, 418_054_151, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceMoveRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :destination_zone, 131_854_653,
    proto3_optional: true,
    type: :string,
    json_name: "destinationZone"

  field :target_instance, 289_769_347,
    proto3_optional: true,
    type: :string,
    json_name: "targetInstance"
end

defmodule Google.Cloud.Compute.V1.InstanceParams.ResourceManagerTagsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_manager_tags, 377_671_164,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceParams.ResourceManagerTagsEntry,
    json_name: "resourceManagerTags",
    map: true
end

defmodule Google.Cloud.Compute.V1.InstanceProperties.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceProperties.ResourceManagerTagsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :advanced_machine_features, 409_646_002,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.AdvancedMachineFeatures,
    json_name: "advancedMachineFeatures"

  field :can_ip_forward, 467_731_324,
    proto3_optional: true,
    type: :bool,
    json_name: "canIpForward"

  field :confidential_instance_config, 490_637_685,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ConfidentialInstanceConfig,
    json_name: "confidentialInstanceConfig"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :disks, 95_594_102, repeated: true, type: Google.Cloud.Compute.V1.AttachedDisk

  field :guest_accelerators, 463_595_119,
    repeated: true,
    type: Google.Cloud.Compute.V1.AcceleratorConfig,
    json_name: "guestAccelerators"

  field :key_revocation_action_type, 235_941_474,
    proto3_optional: true,
    type: :string,
    json_name: "keyRevocationActionType"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceProperties.LabelsEntry,
    map: true

  field :machine_type, 227_711_026, proto3_optional: true, type: :string, json_name: "machineType"
  field :metadata, 86_866_735, proto3_optional: true, type: Google.Cloud.Compute.V1.Metadata

  field :min_cpu_platform, 242_912_759,
    proto3_optional: true,
    type: :string,
    json_name: "minCpuPlatform"

  field :network_interfaces, 52_735_243,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkInterface,
    json_name: "networkInterfaces"

  field :network_performance_config, 398_330_850,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NetworkPerformanceConfig,
    json_name: "networkPerformanceConfig"

  field :private_ipv6_google_access, 48_277_006,
    proto3_optional: true,
    type: :string,
    json_name: "privateIpv6GoogleAccess"

  field :reservation_affinity, 157_850_683,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ReservationAffinity,
    json_name: "reservationAffinity"

  field :resource_manager_tags, 377_671_164,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceProperties.ResourceManagerTagsEntry,
    json_name: "resourceManagerTags",
    map: true

  field :resource_policies, 22_220_385,
    repeated: true,
    type: :string,
    json_name: "resourcePolicies"

  field :scheduling, 386_688_404, proto3_optional: true, type: Google.Cloud.Compute.V1.Scheduling

  field :service_accounts, 277_537_328,
    repeated: true,
    type: Google.Cloud.Compute.V1.ServiceAccount,
    json_name: "serviceAccounts"

  field :shielded_instance_config, 12_862_901,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig"

  field :tags, 3_552_281, proto3_optional: true, type: Google.Cloud.Compute.V1.Tags
end

defmodule Google.Cloud.Compute.V1.InstanceReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstanceTemplate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :properties, 147_688_755,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InstanceProperties

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :source_instance, 396_315_705,
    proto3_optional: true,
    type: :string,
    json_name: "sourceInstance"

  field :source_instance_params, 135_342_156,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SourceInstanceParams,
    json_name: "sourceInstanceParams"
end

defmodule Google.Cloud.Compute.V1.InstanceTemplateList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.InstanceTemplate
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstanceWithNamedPorts do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, proto3_optional: true, type: :string

  field :named_ports, 427_598_732,
    repeated: true,
    type: Google.Cloud.Compute.V1.NamedPort,
    json_name: "namedPorts"

  field :status, 181_260_274, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstancesAddResourcePoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_policies, 22_220_385,
    repeated: true,
    type: :string,
    json_name: "resourcePolicies"
end

defmodule Google.Cloud.Compute.V1.InstancesGetEffectiveFirewallsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policys, 410_985_794,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy,
    json_name: "firewallPolicys"

  field :firewalls, 272_245_619, repeated: true, type: Google.Cloud.Compute.V1.Firewall
end

defmodule Google.Cloud.Compute.V1.InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :display_name, 4_473_832, proto3_optional: true, type: :string, json_name: "displayName"
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :rules, 108_873_975, repeated: true, type: Google.Cloud.Compute.V1.FirewallPolicyRule
  field :short_name, 492_051_566, proto3_optional: true, type: :string, json_name: "shortName"
  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstancesRemoveResourcePoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_policies, 22_220_385,
    repeated: true,
    type: :string,
    json_name: "resourcePolicies"
end

defmodule Google.Cloud.Compute.V1.InstancesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: Google.Cloud.Compute.V1.Instance
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InstancesSetLabelsRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.InstancesSetLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :label_fingerprint, 178_124_825,
    proto3_optional: true,
    type: :string,
    json_name: "labelFingerprint"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstancesSetLabelsRequest.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Compute.V1.InstancesSetMachineResourcesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :guest_accelerators, 463_595_119,
    repeated: true,
    type: Google.Cloud.Compute.V1.AcceleratorConfig,
    json_name: "guestAccelerators"
end

defmodule Google.Cloud.Compute.V1.InstancesSetMachineTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :machine_type, 227_711_026, proto3_optional: true, type: :string, json_name: "machineType"
end

defmodule Google.Cloud.Compute.V1.InstancesSetMinCpuPlatformRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :min_cpu_platform, 242_912_759,
    proto3_optional: true,
    type: :string,
    json_name: "minCpuPlatform"
end

defmodule Google.Cloud.Compute.V1.InstancesSetServiceAccountRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :email, 96_619_420, proto3_optional: true, type: :string
  field :scopes, 165_973_151, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InstancesStartWithEncryptionKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disks, 95_594_102,
    repeated: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKeyProtectedDisk
end

defmodule Google.Cloud.Compute.V1.Int64RangeMatch do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :range_end, 322_439_897, proto3_optional: true, type: :int64, json_name: "rangeEnd"
  field :range_start, 103_333_600, proto3_optional: true, type: :int64, json_name: "rangeStart"
end

defmodule Google.Cloud.Compute.V1.Interconnect do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :admin_enabled, 445_675_089, proto3_optional: true, type: :bool, json_name: "adminEnabled"

  field :circuit_infos, 164_839_855,
    repeated: true,
    type: Google.Cloud.Compute.V1.InterconnectCircuitInfo,
    json_name: "circuitInfos"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :customer_name, 3_665_484, proto3_optional: true, type: :string, json_name: "customerName"
  field :description, 422_937_596, proto3_optional: true, type: :string

  field :expected_outages, 264_484_123,
    repeated: true,
    type: Google.Cloud.Compute.V1.InterconnectOutageNotification,
    json_name: "expectedOutages"

  field :google_ip_address, 443_105_954,
    proto3_optional: true,
    type: :string,
    json_name: "googleIpAddress"

  field :google_reference_id, 534_944_469,
    proto3_optional: true,
    type: :string,
    json_name: "googleReferenceId"

  field :id, 3355, proto3_optional: true, type: :uint64

  field :interconnect_attachments, 425_388_415,
    repeated: true,
    type: :string,
    json_name: "interconnectAttachments"

  field :interconnect_type, 515_165_259,
    proto3_optional: true,
    type: :string,
    json_name: "interconnectType"

  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :link_type, 523_207_775, proto3_optional: true, type: :string, json_name: "linkType"
  field :location, 290_430_901, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :noc_contact_email, 14_072_832,
    proto3_optional: true,
    type: :string,
    json_name: "nocContactEmail"

  field :operational_status, 201_070_847,
    proto3_optional: true,
    type: :string,
    json_name: "operationalStatus"

  field :peer_ip_address, 207_735_769,
    proto3_optional: true,
    type: :string,
    json_name: "peerIpAddress"

  field :provisioned_link_count, 410_888_565,
    proto3_optional: true,
    type: :int32,
    json_name: "provisionedLinkCount"

  field :requested_link_count, 45_051_387,
    proto3_optional: true,
    type: :int32,
    json_name: "requestedLinkCount"

  field :satisfies_pzs, 480_964_267, proto3_optional: true, type: :bool, json_name: "satisfiesPzs"
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :state, 109_757_585, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :admin_enabled, 445_675_089, proto3_optional: true, type: :bool, json_name: "adminEnabled"
  field :bandwidth, 181_715_121, proto3_optional: true, type: :string

  field :candidate_ipv6_subnets, 70_682_522,
    repeated: true,
    type: :string,
    json_name: "candidateIpv6Subnets"

  field :candidate_subnets, 237_842_938,
    repeated: true,
    type: :string,
    json_name: "candidateSubnets"

  field :cloud_router_ip_address, 287_392_776,
    proto3_optional: true,
    type: :string,
    json_name: "cloudRouterIpAddress"

  field :cloud_router_ipv6_address, 451_922_376,
    proto3_optional: true,
    type: :string,
    json_name: "cloudRouterIpv6Address"

  field :cloud_router_ipv6_interface_id, 521_282_701,
    proto3_optional: true,
    type: :string,
    json_name: "cloudRouterIpv6InterfaceId"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :customer_router_ip_address, 332_475_761,
    proto3_optional: true,
    type: :string,
    json_name: "customerRouterIpAddress"

  field :customer_router_ipv6_address, 290_127_089,
    proto3_optional: true,
    type: :string,
    json_name: "customerRouterIpv6Address"

  field :customer_router_ipv6_interface_id, 380_994_308,
    proto3_optional: true,
    type: :string,
    json_name: "customerRouterIpv6InterfaceId"

  field :dataplane_version, 34_920_075,
    proto3_optional: true,
    type: :int32,
    json_name: "dataplaneVersion"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :edge_availability_domain, 71_289_510,
    proto3_optional: true,
    type: :string,
    json_name: "edgeAvailabilityDomain"

  field :encryption, 97_980_291, proto3_optional: true, type: :string

  field :google_reference_id, 534_944_469,
    proto3_optional: true,
    type: :string,
    json_name: "googleReferenceId"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :interconnect, 224_601_230, proto3_optional: true, type: :string

  field :ipsec_internal_addresses, 407_648_565,
    repeated: true,
    type: :string,
    json_name: "ipsecInternalAddresses"

  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :mtu, 108_462, proto3_optional: true, type: :int32
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :operational_status, 201_070_847,
    proto3_optional: true,
    type: :string,
    json_name: "operationalStatus"

  field :pairing_key, 439_695_464, proto3_optional: true, type: :string, json_name: "pairingKey"
  field :partner_asn, 438_166_149, proto3_optional: true, type: :int64, json_name: "partnerAsn"

  field :partner_metadata, 65_908_934,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InterconnectAttachmentPartnerMetadata,
    json_name: "partnerMetadata"

  field :private_interconnect_info, 237_270_531,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InterconnectAttachmentPrivateInfo,
    json_name: "privateInterconnectInfo"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :router, 148_608_841, proto3_optional: true, type: :string
  field :satisfies_pzs, 480_964_267, proto3_optional: true, type: :bool, json_name: "satisfiesPzs"
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :stack_type, 425_908_881, proto3_optional: true, type: :string, json_name: "stackType"
  field :state, 109_757_585, proto3_optional: true, type: :string
  field :type, 3_575_610, proto3_optional: true, type: :string

  field :vlan_tag8021q, 119_927_836,
    proto3_optional: true,
    type: :int32,
    json_name: "vlanTag8021q"
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachmentAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.InterconnectAttachmentsScopedList
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachmentAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.InterconnectAttachmentAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachmentList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.InterconnectAttachment
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachmentPartnerMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect_name, 514_963_356,
    proto3_optional: true,
    type: :string,
    json_name: "interconnectName"

  field :partner_name, 161_747_874, proto3_optional: true, type: :string, json_name: "partnerName"
  field :portal_url, 269_182_748, proto3_optional: true, type: :string, json_name: "portalUrl"
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachmentPrivateInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tag8021q, 271_820_992, proto3_optional: true, type: :uint32
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachmentsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect_attachments, 425_388_415,
    repeated: true,
    type: Google.Cloud.Compute.V1.InterconnectAttachment,
    json_name: "interconnectAttachments"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InterconnectCircuitInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_demarc_id, 28_771_859,
    proto3_optional: true,
    type: :string,
    json_name: "customerDemarcId"

  field :google_circuit_id, 262_014_711,
    proto3_optional: true,
    type: :string,
    json_name: "googleCircuitId"

  field :google_demarc_id, 448_196_270,
    proto3_optional: true,
    type: :string,
    json_name: "googleDemarcId"
end

defmodule Google.Cloud.Compute.V1.InterconnectDiagnostics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :arp_caches, 414_591_761,
    repeated: true,
    type: Google.Cloud.Compute.V1.InterconnectDiagnosticsARPEntry,
    json_name: "arpCaches"

  field :links, 102_977_465,
    repeated: true,
    type: Google.Cloud.Compute.V1.InterconnectDiagnosticsLinkStatus

  field :mac_address, 332_540_164, proto3_optional: true, type: :string, json_name: "macAddress"
end

defmodule Google.Cloud.Compute.V1.InterconnectDiagnosticsARPEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_address, 406_272_220, proto3_optional: true, type: :string, json_name: "ipAddress"
  field :mac_address, 332_540_164, proto3_optional: true, type: :string, json_name: "macAddress"
end

defmodule Google.Cloud.Compute.V1.InterconnectDiagnosticsLinkLACPStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :google_system_id, 91_210_405,
    proto3_optional: true,
    type: :string,
    json_name: "googleSystemId"

  field :neighbor_system_id, 343_821_342,
    proto3_optional: true,
    type: :string,
    json_name: "neighborSystemId"

  field :state, 109_757_585, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InterconnectDiagnosticsLinkOpticalPower do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 109_757_585, proto3_optional: true, type: :string
  field :value, 111_972_721, proto3_optional: true, type: :float
end

defmodule Google.Cloud.Compute.V1.InterconnectDiagnosticsLinkStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :arp_caches, 414_591_761,
    repeated: true,
    type: Google.Cloud.Compute.V1.InterconnectDiagnosticsARPEntry,
    json_name: "arpCaches"

  field :circuit_id, 225_180_977, proto3_optional: true, type: :string, json_name: "circuitId"
  field :google_demarc, 51084, proto3_optional: true, type: :string, json_name: "googleDemarc"

  field :lacp_status, 361_210_415,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InterconnectDiagnosticsLinkLACPStatus,
    json_name: "lacpStatus"

  field :receiving_optical_power, 244_717_279,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InterconnectDiagnosticsLinkOpticalPower,
    json_name: "receivingOpticalPower"

  field :transmitting_optical_power, 459_431_197,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InterconnectDiagnosticsLinkOpticalPower,
    json_name: "transmittingOpticalPower"
end

defmodule Google.Cloud.Compute.V1.InterconnectList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Interconnect
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InterconnectLocation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address, 462_920_692, proto3_optional: true, type: :string

  field :availability_zone, 158_459_920,
    proto3_optional: true,
    type: :string,
    json_name: "availabilityZone"

  field :city, 3_053_931, proto3_optional: true, type: :string
  field :continent, 133_442_996, proto3_optional: true, type: :string

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :facility_provider, 533_303_309,
    proto3_optional: true,
    type: :string,
    json_name: "facilityProvider"

  field :facility_provider_facility_id, 87_269_125,
    proto3_optional: true,
    type: :string,
    json_name: "facilityProviderFacilityId"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :peeringdb_facility_id, 536_567_094,
    proto3_optional: true,
    type: :string,
    json_name: "peeringdbFacilityId"

  field :region_infos, 312_194_170,
    repeated: true,
    type: Google.Cloud.Compute.V1.InterconnectLocationRegionInfo,
    json_name: "regionInfos"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :status, 181_260_274, proto3_optional: true, type: :string
  field :supports_pzs, 83_983_214, proto3_optional: true, type: :bool, json_name: "supportsPzs"
end

defmodule Google.Cloud.Compute.V1.InterconnectLocationList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.InterconnectLocation
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.InterconnectLocationRegionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :expected_rtt_ms, 422_543_866,
    proto3_optional: true,
    type: :int64,
    json_name: "expectedRttMs"

  field :location_presence, 101_517_893,
    proto3_optional: true,
    type: :string,
    json_name: "locationPresence"

  field :region, 138_946_292, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InterconnectOutageNotification do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :affected_circuits, 177_717_013,
    repeated: true,
    type: :string,
    json_name: "affectedCircuits"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :end_time, 114_938_801, proto3_optional: true, type: :int64, json_name: "endTime"
  field :issue_type, 369_639_136, proto3_optional: true, type: :string, json_name: "issueType"
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :source, 177_235_995, proto3_optional: true, type: :string
  field :start_time, 37_467_274, proto3_optional: true, type: :int64, json_name: "startTime"
  field :state, 109_757_585, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.InterconnectsGetDiagnosticsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 139_315_229,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InterconnectDiagnostics
end

defmodule Google.Cloud.Compute.V1.InvalidateCacheUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cache_invalidation_rule_resource, 312_795_565,
    type: Google.Cloud.Compute.V1.CacheInvalidationRule,
    json_name: "cacheInvalidationRuleResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :url_map, 367_020_684, type: :string, json_name: "urlMap", deprecated: false
end

defmodule Google.Cloud.Compute.V1.Items do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 106_079, proto3_optional: true, type: :string
  field :value, 111_972_721, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.License do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :charges_use_fee, 372_412_622,
    proto3_optional: true,
    type: :bool,
    json_name: "chargesUseFee"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :license_code, 1_467_179, proto3_optional: true, type: :uint64, json_name: "licenseCode"
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :resource_requirements, 214_292_769,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.LicenseResourceRequirements,
    json_name: "resourceRequirements"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :transferable, 4_349_893, proto3_optional: true, type: :bool
end

defmodule Google.Cloud.Compute.V1.LicenseCode do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :license_alias, 43_550_930,
    repeated: true,
    type: Google.Cloud.Compute.V1.LicenseCodeLicenseAlias,
    json_name: "licenseAlias"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :state, 109_757_585, proto3_optional: true, type: :string
  field :transferable, 4_349_893, proto3_optional: true, type: :bool
end

defmodule Google.Cloud.Compute.V1.LicenseCodeLicenseAlias do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
end

defmodule Google.Cloud.Compute.V1.LicenseResourceCommitment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :amount, 196_759_640, proto3_optional: true, type: :int64

  field :cores_per_license, 32_482_324,
    proto3_optional: true,
    type: :string,
    json_name: "coresPerLicense"

  field :license, 166_757_441, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.LicenseResourceRequirements do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :min_guest_cpu_count, 477_964_836,
    proto3_optional: true,
    type: :int32,
    json_name: "minGuestCpuCount"

  field :min_memory_mb, 504_785_894, proto3_optional: true, type: :int32, json_name: "minMemoryMb"
end

defmodule Google.Cloud.Compute.V1.LicensesListResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.License

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ListAcceleratorTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListAddressesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListAssociationsFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_resource, 467_318_524,
    proto3_optional: true,
    type: :string,
    json_name: "targetResource"
end

defmodule Google.Cloud.Compute.V1.ListAutoscalersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListAvailableFeaturesSslPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListBackendBucketsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListBackendServicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListDiskTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListDisksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListErrorsInstanceGroupManagersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListErrorsRegionInstanceGroupManagersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListExternalVpnGatewaysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListFirewallPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :parent_id, 459_714_768, proto3_optional: true, type: :string, json_name: "parentId"

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListFirewallsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListForwardingRulesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListGlobalAddressesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListGlobalForwardingRulesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListGlobalNetworkEndpointGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListGlobalOperationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListGlobalOrganizationOperationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :parent_id, 459_714_768, proto3_optional: true, type: :string, json_name: "parentId"

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListGlobalPublicDelegatedPrefixesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListHealthChecksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListImagesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListInstanceGroupManagersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListInstanceGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListInstanceTemplatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListInstancesInstanceGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :instance_group, 81_095_253, type: :string, json_name: "instanceGroup", deprecated: false

  field :instance_groups_list_instances_request_resource, 476_255_263,
    type: Google.Cloud.Compute.V1.InstanceGroupsListInstancesRequest,
    json_name: "instanceGroupsListInstancesRequestResource",
    deprecated: false

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListInstancesRegionInstanceGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :instance_group, 81_095_253, type: :string, json_name: "instanceGroup", deprecated: false
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_groups_list_instances_request_resource, 48_239_828,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupsListInstancesRequest,
    json_name: "regionInstanceGroupsListInstancesRequestResource",
    deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListInterconnectAttachmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListInterconnectLocationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListInterconnectsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListLicensesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListMachineImagesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListMachineTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListManagedInstancesInstanceGroupManagersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListManagedInstancesRegionInstanceGroupManagersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListNetworkEndpointGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListNetworkEndpointsGlobalNetworkEndpointGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListNetworkEndpointsNetworkEndpointGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"

  field :network_endpoint_group, 433_907_078,
    type: :string,
    json_name: "networkEndpointGroup",
    deprecated: false

  field :network_endpoint_groups_list_endpoints_request_resource, 59_493_390,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroupsListEndpointsRequest,
    json_name: "networkEndpointGroupsListEndpointsRequestResource",
    deprecated: false

  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListNetworkFirewallPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListNetworksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListNodeGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListNodeTemplatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListNodeTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListNodesNodeGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :node_group, 469_958_146, type: :string, json_name: "nodeGroup", deprecated: false
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListPacketMirroringsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListPeeringRoutesNetworksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :direction, 111_150_975, proto3_optional: true, type: :string
  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :network, 232_872_494, type: :string, deprecated: false
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :peering_name, 249_571_370, proto3_optional: true, type: :string, json_name: "peeringName"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, proto3_optional: true, type: :string

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListPerInstanceConfigsInstanceGroupManagersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListPerInstanceConfigsRegionInstanceGroupManagersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListPreconfiguredExpressionSetsSecurityPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListPublicAdvertisedPrefixesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListPublicDelegatedPrefixesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListReferrersInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :instance, 18_257_045, type: :string, deprecated: false
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListRegionAutoscalersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionBackendServicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionCommitmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionDiskTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionDisksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionHealthCheckServicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionHealthChecksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionInstanceGroupManagersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionInstanceGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionNetworkEndpointGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionNetworkFirewallPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionNotificationEndpointsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionOperationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionSecurityPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionSslCertificatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionTargetHttpProxiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionTargetHttpsProxiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionUrlMapsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRegionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListReservationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListResourcePoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRoutersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListRoutesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListSecurityPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListServiceAttachmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListSnapshotsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListSslCertificatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListSslPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListSubnetworksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListTargetGrpcProxiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListTargetHttpProxiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListTargetHttpsProxiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListTargetInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListTargetPoolsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListTargetSslProxiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListTargetTcpProxiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListTargetVpnGatewaysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListUrlMapsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListUsableSubnetworksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListVpnGatewaysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListVpnTunnelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListXpnHostsProjectsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :projects_list_xpn_hosts_request_resource, 238_266_391,
    type: Google.Cloud.Compute.V1.ProjectsListXpnHostsRequest,
    json_name: "projectsListXpnHostsRequestResource",
    deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.ListZoneOperationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ListZonesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false

  field :return_partial_success, 517_198_390,
    proto3_optional: true,
    type: :bool,
    json_name: "returnPartialSuccess"
end

defmodule Google.Cloud.Compute.V1.LocalDisk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_count, 182_933_485, proto3_optional: true, type: :int32, json_name: "diskCount"
  field :disk_size_gb, 316_263_735, proto3_optional: true, type: :int32, json_name: "diskSizeGb"
  field :disk_type, 93_009_052, proto3_optional: true, type: :string, json_name: "diskType"
end

defmodule Google.Cloud.Compute.V1.LocalizedMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :locale, 513_150_554, proto3_optional: true, type: :string
  field :message, 418_054_151, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.LocationPolicy.LocationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.LocationPolicyLocation
end

defmodule Google.Cloud.Compute.V1.LocationPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :locations, 413_423_454,
    repeated: true,
    type: Google.Cloud.Compute.V1.LocationPolicy.LocationsEntry,
    map: true

  field :target_shape, 338_621_299, proto3_optional: true, type: :string, json_name: "targetShape"
end

defmodule Google.Cloud.Compute.V1.LocationPolicyLocation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :constraints, 3_909_174,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.LocationPolicyLocationConstraints

  field :preference, 150_781_147, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.LocationPolicyLocationConstraints do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_count, 287_620_724, proto3_optional: true, type: :int32, json_name: "maxCount"
end

defmodule Google.Cloud.Compute.V1.LogConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cloud_audit, 412_852_561,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.LogConfigCloudAuditOptions,
    json_name: "cloudAudit"

  field :counter, 420_959_740,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.LogConfigCounterOptions

  field :data_access, 286_633_881,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.LogConfigDataAccessOptions,
    json_name: "dataAccess"
end

defmodule Google.Cloud.Compute.V1.LogConfigCloudAuditOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authorization_logging_options, 217_861_624,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.AuthorizationLoggingOptions,
    json_name: "authorizationLoggingOptions"

  field :log_name, 402_913_958, proto3_optional: true, type: :string, json_name: "logName"
end

defmodule Google.Cloud.Compute.V1.LogConfigCounterOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :custom_fields, 249_651_015,
    repeated: true,
    type: Google.Cloud.Compute.V1.LogConfigCounterOptionsCustomField,
    json_name: "customFields"

  field :field, 97_427_706, proto3_optional: true, type: :string
  field :metric, 533_067_184, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.LogConfigCounterOptionsCustomField do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :value, 111_972_721, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.LogConfigDataAccessOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :log_mode, 402_897_342, proto3_optional: true, type: :string, json_name: "logMode"
end

defmodule Google.Cloud.Compute.V1.MachineImage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :guest_flush, 385_550_813, proto3_optional: true, type: :bool, json_name: "guestFlush"
  field :id, 3355, proto3_optional: true, type: :uint64

  field :instance_properties, 215_355_165,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.InstanceProperties,
    json_name: "instanceProperties"

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :machine_image_encryption_key, 528_089_087,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "machineImageEncryptionKey"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :satisfies_pzs, 480_964_267, proto3_optional: true, type: :bool, json_name: "satisfiesPzs"

  field :saved_disks, 397_424_318,
    repeated: true,
    type: Google.Cloud.Compute.V1.SavedDisk,
    json_name: "savedDisks"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :source_disk_encryption_keys, 370_408_498,
    repeated: true,
    type: Google.Cloud.Compute.V1.SourceDiskEncryptionKey,
    json_name: "sourceDiskEncryptionKeys"

  field :source_instance, 396_315_705,
    proto3_optional: true,
    type: :string,
    json_name: "sourceInstance"

  field :source_instance_properties, 475_195_641,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SourceInstanceProperties,
    json_name: "sourceInstanceProperties"

  field :status, 181_260_274, proto3_optional: true, type: :string

  field :storage_locations, 328_005_274,
    repeated: true,
    type: :string,
    json_name: "storageLocations"

  field :total_storage_bytes, 81_855_468,
    proto3_optional: true,
    type: :int64,
    json_name: "totalStorageBytes"
end

defmodule Google.Cloud.Compute.V1.MachineImageList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.MachineImage
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.MachineType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :accelerators, 269_577_064, repeated: true, type: Google.Cloud.Compute.V1.Accelerators

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :deprecated, 515_138_995,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.DeprecationStatus

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :guest_cpus, 393_356_754, proto3_optional: true, type: :int32, json_name: "guestCpus"
  field :id, 3355, proto3_optional: true, type: :uint64

  field :image_space_gb, 75_331_864,
    proto3_optional: true,
    type: :int32,
    json_name: "imageSpaceGb"

  field :is_shared_cpu, 521_399_555, proto3_optional: true, type: :bool, json_name: "isSharedCpu"
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :maximum_persistent_disks, 496_220_941,
    proto3_optional: true,
    type: :int32,
    json_name: "maximumPersistentDisks"

  field :maximum_persistent_disks_size_gb, 154_274_471,
    proto3_optional: true,
    type: :int64,
    json_name: "maximumPersistentDisksSizeGb"

  field :memory_mb, 116_001_171, proto3_optional: true, type: :int32, json_name: "memoryMb"
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :scratch_disks, 480_778_481,
    repeated: true,
    type: Google.Cloud.Compute.V1.ScratchDisks,
    json_name: "scratchDisks"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.MachineTypeAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.MachineTypesScopedList
end

defmodule Google.Cloud.Compute.V1.MachineTypeAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.MachineTypeAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.MachineTypeList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.MachineType
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.MachineTypesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :machine_types, 79_720_065,
    repeated: true,
    type: Google.Cloud.Compute.V1.MachineType,
    json_name: "machineTypes"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ManagedInstance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :current_action, 178_475_964,
    proto3_optional: true,
    type: :string,
    json_name: "currentAction"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :instance, 18_257_045, proto3_optional: true, type: :string

  field :instance_health, 382_667_078,
    repeated: true,
    type: Google.Cloud.Compute.V1.ManagedInstanceInstanceHealth,
    json_name: "instanceHealth"

  field :instance_status, 174_577_372,
    proto3_optional: true,
    type: :string,
    json_name: "instanceStatus"

  field :last_attempt, 434_771_492,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ManagedInstanceLastAttempt,
    json_name: "lastAttempt"

  field :preserved_state_from_config, 98_661_858,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.PreservedState,
    json_name: "preservedStateFromConfig"

  field :preserved_state_from_policy, 470_783_954,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.PreservedState,
    json_name: "preservedStateFromPolicy"

  field :version, 351_608_024,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ManagedInstanceVersion
end

defmodule Google.Cloud.Compute.V1.ManagedInstanceInstanceHealth do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :detailed_health_state, 510_470_173,
    proto3_optional: true,
    type: :string,
    json_name: "detailedHealthState"

  field :health_check, 308_876_645, proto3_optional: true, type: :string, json_name: "healthCheck"
end

defmodule Google.Cloud.Compute.V1.ManagedInstanceLastAttempt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :errors, 315_977_579, proto3_optional: true, type: Google.Cloud.Compute.V1.Errors
end

defmodule Google.Cloud.Compute.V1.ManagedInstanceVersion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_template, 309_248_228,
    proto3_optional: true,
    type: :string,
    json_name: "instanceTemplate"

  field :name, 3_373_707, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.Metadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Items
  field :kind, 3_292_052, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.MetadataFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter_labels, 307_903_142,
    repeated: true,
    type: Google.Cloud.Compute.V1.MetadataFilterLabelMatch,
    json_name: "filterLabels"

  field :filter_match_criteria, 239_970_368,
    proto3_optional: true,
    type: :string,
    json_name: "filterMatchCriteria"
end

defmodule Google.Cloud.Compute.V1.MetadataFilterLabelMatch do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :value, 111_972_721, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.MoveDiskProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_move_request_resource, 313_008_458,
    type: Google.Cloud.Compute.V1.DiskMoveRequest,
    json_name: "diskMoveRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.MoveFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :parent_id, 459_714_768, type: :string, json_name: "parentId", deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.MoveInstanceProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_move_request_resource, 311_664_194,
    type: Google.Cloud.Compute.V1.InstanceMoveRequest,
    json_name: "instanceMoveRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.NamedPort do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :port, 3_446_913, proto3_optional: true, type: :int32
end

defmodule Google.Cloud.Compute.V1.Network do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :I_pv4_range, 59_234_358, proto3_optional: true, type: :string, json_name: "IPv4Range"

  field :auto_create_subnetworks, 256_156_690,
    proto3_optional: true,
    type: :bool,
    json_name: "autoCreateSubnetworks"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :enable_ula_internal_ipv6, 423_757_720,
    proto3_optional: true,
    type: :bool,
    json_name: "enableUlaInternalIpv6"

  field :firewall_policy, 498_173_265,
    proto3_optional: true,
    type: :string,
    json_name: "firewallPolicy"

  field :gateway_i_pv4, 178_678_877,
    proto3_optional: true,
    type: :string,
    json_name: "gatewayIPv4"

  field :id, 3355, proto3_optional: true, type: :uint64

  field :internal_ipv6_range, 277_456_807,
    proto3_optional: true,
    type: :string,
    json_name: "internalIpv6Range"

  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :mtu, 108_462, proto3_optional: true, type: :int32
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :network_firewall_policy_enforcement_order, 6_504_784,
    proto3_optional: true,
    type: :string,
    json_name: "networkFirewallPolicyEnforcementOrder"

  field :peerings, 69_883_187, repeated: true, type: Google.Cloud.Compute.V1.NetworkPeering

  field :routing_config, 523_556_059,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NetworkRoutingConfig,
    json_name: "routingConfig"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :self_link_with_id, 44_520_962,
    proto3_optional: true,
    type: :string,
    json_name: "selfLinkWithId"

  field :subnetworks, 415_853_125, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NetworkEdgeSecurityService do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string

  field :security_policy, 171_082_513,
    proto3_optional: true,
    type: :string,
    json_name: "securityPolicy"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :self_link_with_id, 44_520_962,
    proto3_optional: true,
    type: :string,
    json_name: "selfLinkWithId"
end

defmodule Google.Cloud.Compute.V1.NetworkEdgeSecurityServiceAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.NetworkEdgeSecurityServicesScopedList
end

defmodule Google.Cloud.Compute.V1.NetworkEdgeSecurityServiceAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :etag, 3_123_477, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkEdgeSecurityServiceAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NetworkEdgeSecurityServicesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_edge_security_services, 35_530_156,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkEdgeSecurityService,
    json_name: "networkEdgeSecurityServices"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NetworkEndpoint.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.NetworkEndpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :annotations, 112_032_548,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkEndpoint.AnnotationsEntry,
    map: true

  field :fqdn, 3_150_485, proto3_optional: true, type: :string
  field :instance, 18_257_045, proto3_optional: true, type: :string
  field :ip_address, 406_272_220, proto3_optional: true, type: :string, json_name: "ipAddress"
  field :port, 3_446_913, proto3_optional: true, type: :int32
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroup.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :annotations, 112_032_548,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroup.AnnotationsEntry,
    map: true

  field :app_engine, 340_788_768,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroupAppEngine,
    json_name: "appEngine"

  field :cloud_function, 519_893_666,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroupCloudFunction,
    json_name: "cloudFunction"

  field :cloud_run, 111_060_353,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroupCloudRun,
    json_name: "cloudRun"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :default_port, 423_377_855, proto3_optional: true, type: :int32, json_name: "defaultPort"
  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string

  field :network_endpoint_type, 118_301_523,
    proto3_optional: true,
    type: :string,
    json_name: "networkEndpointType"

  field :psc_target_service, 269_132_134,
    proto3_optional: true,
    type: :string,
    json_name: "pscTargetService"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :size, 3_530_753, proto3_optional: true, type: :int32
  field :subnetwork, 307_827_694, proto3_optional: true, type: :string
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.NetworkEndpointGroupsScopedList
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroupAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupAppEngine do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service, 373_540_533, proto3_optional: true, type: :string
  field :url_mask, 103_352_252, proto3_optional: true, type: :string, json_name: "urlMask"
  field :version, 351_608_024, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupCloudFunction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :function, 307_196_888, proto3_optional: true, type: :string
  field :url_mask, 103_352_252, proto3_optional: true, type: :string, json_name: "urlMask"
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupCloudRun do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service, 373_540_533, proto3_optional: true, type: :string
  field :tag, 114_586, proto3_optional: true, type: :string
  field :url_mask, 103_352_252, proto3_optional: true, type: :string, json_name: "urlMask"
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.NetworkEndpointGroup
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupsAttachEndpointsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoints, 149_850_285,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkEndpoint,
    json_name: "networkEndpoints"
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupsDetachEndpointsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoints, 149_850_285,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkEndpoint,
    json_name: "networkEndpoints"
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupsListEndpointsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_status, 380_545_845,
    proto3_optional: true,
    type: :string,
    json_name: "healthStatus"
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupsListNetworkEndpoints do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkEndpointWithHealthStatus

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroupsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_endpoint_groups, 29_346_733,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkEndpointGroup,
    json_name: "networkEndpointGroups"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointWithHealthStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :healths, 258_689_431,
    repeated: true,
    type: Google.Cloud.Compute.V1.HealthStatusForNetworkEndpoint

  field :network_endpoint, 56_789_126,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NetworkEndpoint,
    json_name: "networkEndpoint"
end

defmodule Google.Cloud.Compute.V1.NetworkInterface do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :access_configs, 111_058_326,
    repeated: true,
    type: Google.Cloud.Compute.V1.AccessConfig,
    json_name: "accessConfigs"

  field :alias_ip_ranges, 165_085_631,
    repeated: true,
    type: Google.Cloud.Compute.V1.AliasIpRange,
    json_name: "aliasIpRanges"

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string

  field :internal_ipv6_prefix_length, 203_833_757,
    proto3_optional: true,
    type: :int32,
    json_name: "internalIpv6PrefixLength"

  field :ipv6_access_configs, 483_472_110,
    repeated: true,
    type: Google.Cloud.Compute.V1.AccessConfig,
    json_name: "ipv6AccessConfigs"

  field :ipv6_access_type, 504_658_653,
    proto3_optional: true,
    type: :string,
    json_name: "ipv6AccessType"

  field :ipv6_address, 341_563_804, proto3_optional: true, type: :string, json_name: "ipv6Address"
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string
  field :network_i_p, 207_181_961, proto3_optional: true, type: :string, json_name: "networkIP"
  field :nic_type, 59_810_577, proto3_optional: true, type: :string, json_name: "nicType"
  field :queue_count, 503_708_769, proto3_optional: true, type: :int32, json_name: "queueCount"
  field :stack_type, 425_908_881, proto3_optional: true, type: :string, json_name: "stackType"
  field :subnetwork, 307_827_694, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NetworkList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Network
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NetworkPeering do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_create_routes, 57_454_941,
    proto3_optional: true,
    type: :bool,
    json_name: "autoCreateRoutes"

  field :exchange_subnet_routes, 26_322_256,
    proto3_optional: true,
    type: :bool,
    json_name: "exchangeSubnetRoutes"

  field :export_custom_routes, 60_281_485,
    proto3_optional: true,
    type: :bool,
    json_name: "exportCustomRoutes"

  field :export_subnet_routes_with_public_ip, 97_940_834,
    proto3_optional: true,
    type: :bool,
    json_name: "exportSubnetRoutesWithPublicIp"

  field :import_custom_routes, 197_982_398,
    proto3_optional: true,
    type: :bool,
    json_name: "importCustomRoutes"

  field :import_subnet_routes_with_public_ip, 14_419_729,
    proto3_optional: true,
    type: :bool,
    json_name: "importSubnetRoutesWithPublicIp"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string
  field :peer_mtu, 69_584_721, proto3_optional: true, type: :int32, json_name: "peerMtu"
  field :stack_type, 425_908_881, proto3_optional: true, type: :string, json_name: "stackType"
  field :state, 109_757_585, proto3_optional: true, type: :string

  field :state_details, 95_566_996,
    proto3_optional: true,
    type: :string,
    json_name: "stateDetails"
end

defmodule Google.Cloud.Compute.V1.NetworkPerformanceConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :total_egress_bandwidth_tier, 130_109_439,
    proto3_optional: true,
    type: :string,
    json_name: "totalEgressBandwidthTier"
end

defmodule Google.Cloud.Compute.V1.NetworkRoutingConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :routing_mode, 475_143_548, proto3_optional: true, type: :string, json_name: "routingMode"
end

defmodule Google.Cloud.Compute.V1.NetworksAddPeeringRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_create_routes, 57_454_941,
    proto3_optional: true,
    type: :bool,
    json_name: "autoCreateRoutes"

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :network_peering, 328_926_767,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NetworkPeering,
    json_name: "networkPeering"

  field :peer_network, 500_625_489, proto3_optional: true, type: :string, json_name: "peerNetwork"
end

defmodule Google.Cloud.Compute.V1.NetworksGetEffectiveFirewallsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policys, 410_985_794,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy,
    json_name: "firewallPolicys"

  field :firewalls, 272_245_619, repeated: true, type: Google.Cloud.Compute.V1.Firewall
end

defmodule Google.Cloud.Compute.V1.NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :display_name, 4_473_832, proto3_optional: true, type: :string, json_name: "displayName"
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :rules, 108_873_975, repeated: true, type: Google.Cloud.Compute.V1.FirewallPolicyRule
  field :short_name, 492_051_566, proto3_optional: true, type: :string, json_name: "shortName"
  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NetworksRemovePeeringRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 3_373_707, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NetworksUpdatePeeringRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_peering, 328_926_767,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NetworkPeering,
    json_name: "networkPeering"
end

defmodule Google.Cloud.Compute.V1.NodeGroup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaling_policy, 221_950_041,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NodeGroupAutoscalingPolicy,
    json_name: "autoscalingPolicy"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :location_hint, 350_519_505,
    proto3_optional: true,
    type: :string,
    json_name: "locationHint"

  field :maintenance_policy, 528_327_646,
    proto3_optional: true,
    type: :string,
    json_name: "maintenancePolicy"

  field :maintenance_window, 186_374_812,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NodeGroupMaintenanceWindow,
    json_name: "maintenanceWindow"

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :node_template, 323_154_455,
    proto3_optional: true,
    type: :string,
    json_name: "nodeTemplate"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :size, 3_530_753, proto3_optional: true, type: :int32
  field :status, 181_260_274, proto3_optional: true, type: :string
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NodeGroupAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.NodeGroupsScopedList
end

defmodule Google.Cloud.Compute.V1.NodeGroupAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.NodeGroupAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NodeGroupAutoscalingPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_nodes, 297_762_838, proto3_optional: true, type: :int32, json_name: "maxNodes"
  field :min_nodes, 533_370_500, proto3_optional: true, type: :int32, json_name: "minNodes"
  field :mode, 3_357_091, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NodeGroupList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.NodeGroup
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NodeGroupMaintenanceWindow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :maintenance_duration, 525_291_840,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.Duration,
    json_name: "maintenanceDuration"

  field :start_time, 37_467_274, proto3_optional: true, type: :string, json_name: "startTime"
end

defmodule Google.Cloud.Compute.V1.NodeGroupNode do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :accelerators, 269_577_064,
    repeated: true,
    type: Google.Cloud.Compute.V1.AcceleratorConfig

  field :cpu_overcommit_type, 247_727_959,
    proto3_optional: true,
    type: :string,
    json_name: "cpuOvercommitType"

  field :disks, 95_594_102, repeated: true, type: Google.Cloud.Compute.V1.LocalDisk
  field :instances, 29_097_598, repeated: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :node_type, 465_832_791, proto3_optional: true, type: :string, json_name: "nodeType"
  field :satisfies_pzs, 480_964_267, proto3_optional: true, type: :bool, json_name: "satisfiesPzs"

  field :server_binding, 208_179_593,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ServerBinding,
    json_name: "serverBinding"

  field :server_id, 339_433_367, proto3_optional: true, type: :string, json_name: "serverId"
  field :status, 181_260_274, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NodeGroupsAddNodesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :additional_node_count, 134_997_930,
    proto3_optional: true,
    type: :int32,
    json_name: "additionalNodeCount"
end

defmodule Google.Cloud.Compute.V1.NodeGroupsDeleteNodesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :nodes, 104_993_457, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NodeGroupsListNodes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.NodeGroupNode
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NodeGroupsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_groups, 73_188_017,
    repeated: true,
    type: Google.Cloud.Compute.V1.NodeGroup,
    json_name: "nodeGroups"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NodeGroupsSetNodeTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_template, 323_154_455,
    proto3_optional: true,
    type: :string,
    json_name: "nodeTemplate"
end

defmodule Google.Cloud.Compute.V1.NodeTemplate.NodeAffinityLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.NodeTemplate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :accelerators, 269_577_064,
    repeated: true,
    type: Google.Cloud.Compute.V1.AcceleratorConfig

  field :cpu_overcommit_type, 247_727_959,
    proto3_optional: true,
    type: :string,
    json_name: "cpuOvercommitType"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :disks, 95_594_102, repeated: true, type: Google.Cloud.Compute.V1.LocalDisk
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :node_affinity_labels, 339_007_161,
    repeated: true,
    type: Google.Cloud.Compute.V1.NodeTemplate.NodeAffinityLabelsEntry,
    json_name: "nodeAffinityLabels",
    map: true

  field :node_type, 465_832_791, proto3_optional: true, type: :string, json_name: "nodeType"

  field :node_type_flexibility, 315_257_905,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NodeTemplateNodeTypeFlexibility,
    json_name: "nodeTypeFlexibility"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :server_binding, 208_179_593,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ServerBinding,
    json_name: "serverBinding"

  field :status, 181_260_274, proto3_optional: true, type: :string

  field :status_message, 297_428_154,
    proto3_optional: true,
    type: :string,
    json_name: "statusMessage"
end

defmodule Google.Cloud.Compute.V1.NodeTemplateAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.NodeTemplatesScopedList
end

defmodule Google.Cloud.Compute.V1.NodeTemplateAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.NodeTemplateAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NodeTemplateList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.NodeTemplate
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NodeTemplateNodeTypeFlexibility do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cpus, 3_060_683, proto3_optional: true, type: :string
  field :local_ssd, 405_741_360, proto3_optional: true, type: :string, json_name: "localSsd"
  field :memory, 532_856_065, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NodeTemplatesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_templates, 354_111_804,
    repeated: true,
    type: Google.Cloud.Compute.V1.NodeTemplate,
    json_name: "nodeTemplates"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NodeType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cpu_platform, 410_285_354, proto3_optional: true, type: :string, json_name: "cpuPlatform"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :deprecated, 515_138_995,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.DeprecationStatus

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :guest_cpus, 393_356_754, proto3_optional: true, type: :int32, json_name: "guestCpus"
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :local_ssd_gb, 329_237_578, proto3_optional: true, type: :int32, json_name: "localSsdGb"
  field :memory_mb, 116_001_171, proto3_optional: true, type: :int32, json_name: "memoryMb"
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.NodeTypeAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.NodeTypesScopedList
end

defmodule Google.Cloud.Compute.V1.NodeTypeAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.NodeTypeAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NodeTypeList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.NodeType
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NodeTypesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_types, 482_172_924,
    repeated: true,
    type: Google.Cloud.Compute.V1.NodeType,
    json_name: "nodeTypes"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.NotificationEndpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :grpc_settings, 456_139_556,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.NotificationEndpointGrpcSettings,
    json_name: "grpcSettings"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
end

defmodule Google.Cloud.Compute.V1.NotificationEndpointGrpcSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authority, 401_868_611, proto3_optional: true, type: :string
  field :endpoint, 130_489_749, proto3_optional: true, type: :string
  field :payload_name, 300_358_300, proto3_optional: true, type: :string, json_name: "payloadName"

  field :resend_interval, 478_288_969,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.Duration,
    json_name: "resendInterval"

  field :retry_duration_sec, 115_681_117,
    proto3_optional: true,
    type: :uint32,
    json_name: "retryDurationSec"
end

defmodule Google.Cloud.Compute.V1.NotificationEndpointList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.NotificationEndpoint
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.Operation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_operation_id, 297_240_295,
    proto3_optional: true,
    type: :string,
    json_name: "clientOperationId"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :end_time, 114_938_801, proto3_optional: true, type: :string, json_name: "endTime"
  field :error, 96_784_904, proto3_optional: true, type: Google.Cloud.Compute.V1.Error

  field :http_error_message, 202_521_945,
    proto3_optional: true,
    type: :string,
    json_name: "httpErrorMessage",
    deprecated: false

  field :http_error_status_code, 312_345_196,
    proto3_optional: true,
    type: :int32,
    json_name: "httpErrorStatusCode",
    deprecated: false

  field :id, 3355, proto3_optional: true, type: :uint64
  field :insert_time, 433_722_515, proto3_optional: true, type: :string, json_name: "insertTime"
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string, deprecated: false

  field :operation_group_id, 40_171_187,
    proto3_optional: true,
    type: :string,
    json_name: "operationGroupId"

  field :operation_type, 177_650_450,
    proto3_optional: true,
    type: :string,
    json_name: "operationType"

  field :progress, 72_663_597, proto3_optional: true, type: :int32
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :start_time, 37_467_274, proto3_optional: true, type: :string, json_name: "startTime"

  field :status, 181_260_274,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.Operation.Status,
    enum: true,
    deprecated: false

  field :status_message, 297_428_154,
    proto3_optional: true,
    type: :string,
    json_name: "statusMessage"

  field :target_id, 258_165_385, proto3_optional: true, type: :uint64, json_name: "targetId"
  field :target_link, 62_671_336, proto3_optional: true, type: :string, json_name: "targetLink"
  field :user, 3_599_307, proto3_optional: true, type: :string
  field :warnings, 498_091_095, repeated: true, type: Google.Cloud.Compute.V1.Warnings
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.OperationAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.OperationsScopedList
end

defmodule Google.Cloud.Compute.V1.OperationAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.OperationAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.OperationList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Operation
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.OperationsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operations, 4_184_044, repeated: true, type: Google.Cloud.Compute.V1.Operation
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.OutlierDetection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :base_ejection_time, 80_997_255,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.Duration,
    json_name: "baseEjectionTime"

  field :consecutive_errors, 387_193_248,
    proto3_optional: true,
    type: :int32,
    json_name: "consecutiveErrors"

  field :consecutive_gateway_failure, 417_504_250,
    proto3_optional: true,
    type: :int32,
    json_name: "consecutiveGatewayFailure"

  field :enforcing_consecutive_errors, 213_133_760,
    proto3_optional: true,
    type: :int32,
    json_name: "enforcingConsecutiveErrors"

  field :enforcing_consecutive_gateway_failure, 394_440_666,
    proto3_optional: true,
    type: :int32,
    json_name: "enforcingConsecutiveGatewayFailure"

  field :enforcing_success_rate, 194_508_732,
    proto3_optional: true,
    type: :int32,
    json_name: "enforcingSuccessRate"

  field :interval, 33_547_461, proto3_optional: true, type: Google.Cloud.Compute.V1.Duration

  field :max_ejection_percent, 18_436_888,
    proto3_optional: true,
    type: :int32,
    json_name: "maxEjectionPercent"

  field :success_rate_minimum_hosts, 525_766_903,
    proto3_optional: true,
    type: :int32,
    json_name: "successRateMinimumHosts"

  field :success_rate_request_volume, 281_425_357,
    proto3_optional: true,
    type: :int32,
    json_name: "successRateRequestVolume"

  field :success_rate_stdev_factor, 174_735_773,
    proto3_optional: true,
    type: :int32,
    json_name: "successRateStdevFactor"
end

defmodule Google.Cloud.Compute.V1.PacketIntervals do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :avg_ms, 204_811_827, proto3_optional: true, type: :int64, json_name: "avgMs"
  field :duration, 155_471_252, proto3_optional: true, type: :string
  field :max_ms, 529_474_145, proto3_optional: true, type: :int64, json_name: "maxMs"
  field :min_ms, 536_564_403, proto3_optional: true, type: :int64, json_name: "minMs"

  field :num_intervals, 186_329_813,
    proto3_optional: true,
    type: :int64,
    json_name: "numIntervals"

  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PacketMirroring do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :collector_ilb, 426_607_853,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.PacketMirroringForwardingRuleInfo,
    json_name: "collectorIlb"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :enable, 311_764_355, proto3_optional: true, type: :string

  field :filter, 336_120_696,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.PacketMirroringFilter

  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :mirrored_resources, 124_817_348,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.PacketMirroringMirroredResourceInfo,
    json_name: "mirroredResources"

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :network, 232_872_494,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.PacketMirroringNetworkInfo

  field :priority, 445_151_652, proto3_optional: true, type: :uint32
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
end

defmodule Google.Cloud.Compute.V1.PacketMirroringAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.PacketMirroringsScopedList
end

defmodule Google.Cloud.Compute.V1.PacketMirroringAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.PacketMirroringAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.PacketMirroringFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :I_p_protocols, 98_544_854, repeated: true, type: :string, json_name: "IPProtocols"
  field :cidr_ranges, 487_901_697, repeated: true, type: :string, json_name: "cidrRanges"
  field :direction, 111_150_975, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PacketMirroringForwardingRuleInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :canonical_url, 512_294_820,
    proto3_optional: true,
    type: :string,
    json_name: "canonicalUrl"

  field :url, 116_079, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PacketMirroringList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.PacketMirroring
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.PacketMirroringMirroredResourceInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598,
    repeated: true,
    type: Google.Cloud.Compute.V1.PacketMirroringMirroredResourceInfoInstanceInfo

  field :subnetworks, 415_853_125,
    repeated: true,
    type: Google.Cloud.Compute.V1.PacketMirroringMirroredResourceInfoSubnetInfo

  field :tags, 3_552_281, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PacketMirroringMirroredResourceInfoInstanceInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :canonical_url, 512_294_820,
    proto3_optional: true,
    type: :string,
    json_name: "canonicalUrl"

  field :url, 116_079, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PacketMirroringMirroredResourceInfoSubnetInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :canonical_url, 512_294_820,
    proto3_optional: true,
    type: :string,
    json_name: "canonicalUrl"

  field :url, 116_079, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PacketMirroringNetworkInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :canonical_url, 512_294_820,
    proto3_optional: true,
    type: :string,
    json_name: "canonicalUrl"

  field :url, 116_079, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PacketMirroringsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_mirrorings, 154_615_079,
    repeated: true,
    type: Google.Cloud.Compute.V1.PacketMirroring,
    json_name: "packetMirrorings"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.PatchAutoscalerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler, 517_258_967, proto3_optional: true, type: :string

  field :autoscaler_resource, 207_616_118,
    type: Google.Cloud.Compute.V1.Autoscaler,
    json_name: "autoscalerResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchBackendBucketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_bucket, 91_714_037, type: :string, json_name: "backendBucket", deprecated: false

  field :backend_bucket_resource, 380_757_784,
    type: Google.Cloud.Compute.V1.BackendBucket,
    json_name: "backendBucketResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :backend_service_resource, 347_586_723,
    type: Google.Cloud.Compute.V1.BackendService,
    json_name: "backendServiceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_resource, 495_049_532,
    type: Google.Cloud.Compute.V1.FirewallPolicy,
    json_name: "firewallPolicyResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchFirewallRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall, 511_016_192, type: :string, deprecated: false

  field :firewall_resource, 41_425_005,
    type: Google.Cloud.Compute.V1.Firewall,
    json_name: "firewallResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rule, 269_964_030,
    type: :string,
    json_name: "forwardingRule",
    deprecated: false

  field :forwarding_rule_resource, 301_211_695,
    type: Google.Cloud.Compute.V1.ForwardingRule,
    json_name: "forwardingRuleResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchGlobalForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rule, 269_964_030,
    type: :string,
    json_name: "forwardingRule",
    deprecated: false

  field :forwarding_rule_resource, 301_211_695,
    type: Google.Cloud.Compute.V1.ForwardingRule,
    json_name: "forwardingRuleResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchGlobalPublicDelegatedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_delegated_prefix, 204_238_440,
    type: :string,
    json_name: "publicDelegatedPrefix",
    deprecated: false

  field :public_delegated_prefix_resource, 47_594_501,
    type: Google.Cloud.Compute.V1.PublicDelegatedPrefix,
    json_name: "publicDelegatedPrefixResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check, 308_876_645, type: :string, json_name: "healthCheck", deprecated: false

  field :health_check_resource, 201_925_032,
    type: Google.Cloud.Compute.V1.HealthCheck,
    json_name: "healthCheckResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :image, 100_313_435, type: :string, deprecated: false

  field :image_resource, 371_171_954,
    type: Google.Cloud.Compute.V1.Image,
    json_name: "imageResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_manager_resource, 261_063_946,
    type: Google.Cloud.Compute.V1.InstanceGroupManager,
    json_name: "instanceGroupManagerResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchInterconnectAttachmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect_attachment, 308_135_284,
    type: :string,
    json_name: "interconnectAttachment",
    deprecated: false

  field :interconnect_attachment_resource, 212_341_369,
    type: Google.Cloud.Compute.V1.InterconnectAttachment,
    json_name: "interconnectAttachmentResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchInterconnectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interconnect, 224_601_230, type: :string, deprecated: false

  field :interconnect_resource, 397_611_167,
    type: Google.Cloud.Compute.V1.Interconnect,
    json_name: "interconnectResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchNetworkEdgeSecurityServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_edge_security_service, 157_011_879,
    type: :string,
    json_name: "networkEdgeSecurityService",
    deprecated: false

  field :network_edge_security_service_resource, 477_548_966,
    type: Google.Cloud.Compute.V1.NetworkEdgeSecurityService,
    json_name: "networkEdgeSecurityServiceResource",
    deprecated: false

  field :paths, 106_438_894, proto3_optional: true, type: :string
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :update_mask, 500_079_778, proto3_optional: true, type: :string, json_name: "updateMask"
end

defmodule Google.Cloud.Compute.V1.PatchNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_resource, 495_049_532,
    type: Google.Cloud.Compute.V1.FirewallPolicy,
    json_name: "firewallPolicyResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network, 232_872_494, type: :string, deprecated: false

  field :network_resource, 122_105_599,
    type: Google.Cloud.Compute.V1.Network,
    json_name: "networkResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchNodeGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_group, 469_958_146, type: :string, json_name: "nodeGroup", deprecated: false

  field :node_group_resource, 505_321_899,
    type: Google.Cloud.Compute.V1.NodeGroup,
    json_name: "nodeGroupResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchPacketMirroringRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_mirroring, 22_305_996,
    type: :string,
    json_name: "packetMirroring",
    deprecated: false

  field :packet_mirroring_resource, 493_501_985,
    type: Google.Cloud.Compute.V1.PacketMirroring,
    json_name: "packetMirroringResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchPerInstanceConfigsInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_managers_patch_per_instance_configs_req_resource, 356_650_495,
    type: Google.Cloud.Compute.V1.InstanceGroupManagersPatchPerInstanceConfigsReq,
    json_name: "instanceGroupManagersPatchPerInstanceConfigsReqResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchPerInstanceConfigsRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_group_manager_patch_instance_config_req_resource, 197_682_890,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupManagerPatchInstanceConfigReq,
    json_name: "regionInstanceGroupManagerPatchInstanceConfigReqResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchPublicAdvertisedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_advertised_prefix, 101_874_590,
    type: :string,
    json_name: "publicAdvertisedPrefix",
    deprecated: false

  field :public_advertised_prefix_resource, 233_614_223,
    type: Google.Cloud.Compute.V1.PublicAdvertisedPrefix,
    json_name: "publicAdvertisedPrefixResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchPublicDelegatedPrefixeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :public_delegated_prefix, 204_238_440,
    type: :string,
    json_name: "publicDelegatedPrefix",
    deprecated: false

  field :public_delegated_prefix_resource, 47_594_501,
    type: Google.Cloud.Compute.V1.PublicDelegatedPrefix,
    json_name: "publicDelegatedPrefixResource",
    deprecated: false

  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchRegionAutoscalerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler, 517_258_967, proto3_optional: true, type: :string

  field :autoscaler_resource, 207_616_118,
    type: Google.Cloud.Compute.V1.Autoscaler,
    json_name: "autoscalerResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchRegionBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :backend_service_resource, 347_586_723,
    type: Google.Cloud.Compute.V1.BackendService,
    json_name: "backendServiceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchRegionHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check, 308_876_645, type: :string, json_name: "healthCheck", deprecated: false

  field :health_check_resource, 201_925_032,
    type: Google.Cloud.Compute.V1.HealthCheck,
    json_name: "healthCheckResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchRegionHealthCheckServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check_service, 408_374_747,
    type: :string,
    json_name: "healthCheckService",
    deprecated: false

  field :health_check_service_resource, 477_367_794,
    type: Google.Cloud.Compute.V1.HealthCheckService,
    json_name: "healthCheckServiceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_manager_resource, 261_063_946,
    type: Google.Cloud.Compute.V1.InstanceGroupManager,
    json_name: "instanceGroupManagerResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_resource, 495_049_532,
    type: Google.Cloud.Compute.V1.FirewallPolicy,
    json_name: "firewallPolicyResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchRegionSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :security_policy, 171_082_513,
    type: :string,
    json_name: "securityPolicy",
    deprecated: false

  field :security_policy_resource, 216_159_612,
    type: Google.Cloud.Compute.V1.SecurityPolicy,
    json_name: "securityPolicyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchRegionTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false

  field :target_https_proxy_resource, 433_657_473,
    type: Google.Cloud.Compute.V1.TargetHttpsProxy,
    json_name: "targetHttpsProxyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchRegionUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :url_map, 367_020_684, type: :string, json_name: "urlMap", deprecated: false

  field :url_map_resource, 168_675_425,
    type: Google.Cloud.Compute.V1.UrlMap,
    json_name: "urlMapResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchRouterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :router, 148_608_841, type: :string, deprecated: false

  field :router_resource, 155_222_084,
    type: Google.Cloud.Compute.V1.Router,
    json_name: "routerResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchRuleFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_rule_resource, 250_523_523,
    type: Google.Cloud.Compute.V1.FirewallPolicyRule,
    json_name: "firewallPolicyRuleResource",
    deprecated: false

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchRuleNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_rule_resource, 250_523_523,
    type: Google.Cloud.Compute.V1.FirewallPolicyRule,
    json_name: "firewallPolicyRuleResource",
    deprecated: false

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchRuleRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :firewall_policy_rule_resource, 250_523_523,
    type: Google.Cloud.Compute.V1.FirewallPolicyRule,
    json_name: "firewallPolicyRuleResource",
    deprecated: false

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.PatchRuleSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :project, 227_560_217, type: :string, deprecated: false

  field :security_policy, 171_082_513,
    type: :string,
    json_name: "securityPolicy",
    deprecated: false

  field :security_policy_rule_resource, 402_693_443,
    type: Google.Cloud.Compute.V1.SecurityPolicyRule,
    json_name: "securityPolicyRuleResource",
    deprecated: false

  field :validate_only, 242_744_629, proto3_optional: true, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Compute.V1.PatchSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :security_policy, 171_082_513,
    type: :string,
    json_name: "securityPolicy",
    deprecated: false

  field :security_policy_resource, 216_159_612,
    type: Google.Cloud.Compute.V1.SecurityPolicy,
    json_name: "securityPolicyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchServiceAttachmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :service_attachment, 338_957_549,
    type: :string,
    json_name: "serviceAttachment",
    deprecated: false

  field :service_attachment_resource, 472_980_256,
    type: Google.Cloud.Compute.V1.ServiceAttachment,
    json_name: "serviceAttachmentResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchSslPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :ssl_policy, 295_190_213, type: :string, json_name: "sslPolicy", deprecated: false

  field :ssl_policy_resource, 274_891_848,
    type: Google.Cloud.Compute.V1.SslPolicy,
    json_name: "sslPolicyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchSubnetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :drain_timeout_seconds, 357_707_098,
    proto3_optional: true,
    type: :int32,
    json_name: "drainTimeoutSeconds"

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :subnetwork, 307_827_694, type: :string, deprecated: false

  field :subnetwork_resource, 42_233_151,
    type: Google.Cloud.Compute.V1.Subnetwork,
    json_name: "subnetworkResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchTargetGrpcProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_grpc_proxy, 5_020_283,
    type: :string,
    json_name: "targetGrpcProxy",
    deprecated: false

  field :target_grpc_proxy_resource, 328_922_450,
    type: Google.Cloud.Compute.V1.TargetGrpcProxy,
    json_name: "targetGrpcProxyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchTargetHttpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_http_proxy, 206_872_421,
    type: :string,
    json_name: "targetHttpProxy",
    deprecated: false

  field :target_http_proxy_resource, 24_696_744,
    type: Google.Cloud.Compute.V1.TargetHttpProxy,
    json_name: "targetHttpProxyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false

  field :target_https_proxy_resource, 433_657_473,
    type: Google.Cloud.Compute.V1.TargetHttpsProxy,
    json_name: "targetHttpsProxyResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PatchUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :url_map, 367_020_684, type: :string, json_name: "urlMap", deprecated: false

  field :url_map_resource, 168_675_425,
    type: Google.Cloud.Compute.V1.UrlMap,
    json_name: "urlMapResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.PathMatcher do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :default_route_action, 378_919_466,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpRouteAction,
    json_name: "defaultRouteAction"

  field :default_service, 370_242_231,
    proto3_optional: true,
    type: :string,
    json_name: "defaultService"

  field :default_url_redirect, 359_503_338,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpRedirectAction,
    json_name: "defaultUrlRedirect"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :header_action, 328_077_352,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpHeaderAction,
    json_name: "headerAction"

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :path_rules, 104_439_901,
    repeated: true,
    type: Google.Cloud.Compute.V1.PathRule,
    json_name: "pathRules"

  field :route_rules, 376_292_225,
    repeated: true,
    type: Google.Cloud.Compute.V1.HttpRouteRule,
    json_name: "routeRules"
end

defmodule Google.Cloud.Compute.V1.PathRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :paths, 106_438_894, repeated: true, type: :string

  field :route_action, 424_563_948,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpRouteAction,
    json_name: "routeAction"

  field :service, 373_540_533, proto3_optional: true, type: :string

  field :url_redirect, 405_147_820,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpRedirectAction,
    json_name: "urlRedirect"
end

defmodule Google.Cloud.Compute.V1.PerInstanceConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :preserved_state, 2_634_026,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.PreservedState,
    json_name: "preservedState"

  field :status, 181_260_274, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.Policy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :audit_configs, 328_080_653,
    repeated: true,
    type: Google.Cloud.Compute.V1.AuditConfig,
    json_name: "auditConfigs"

  field :bindings, 403_251_854, repeated: true, type: Google.Cloud.Compute.V1.Binding
  field :etag, 3_123_477, proto3_optional: true, type: :string
  field :iam_owned, 450_566_203, proto3_optional: true, type: :bool, json_name: "iamOwned"
  field :rules, 108_873_975, repeated: true, type: Google.Cloud.Compute.V1.Rule
  field :version, 351_608_024, proto3_optional: true, type: :int32
end

defmodule Google.Cloud.Compute.V1.PreconfiguredWafSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :expression_sets, 474_011_032,
    repeated: true,
    type: Google.Cloud.Compute.V1.WafExpressionSet,
    json_name: "expressionSets"
end

defmodule Google.Cloud.Compute.V1.PreservedState.DisksEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.PreservedStatePreservedDisk
end

defmodule Google.Cloud.Compute.V1.PreservedState.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.PreservedState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disks, 95_594_102,
    repeated: true,
    type: Google.Cloud.Compute.V1.PreservedState.DisksEntry,
    map: true

  field :metadata, 86_866_735,
    repeated: true,
    type: Google.Cloud.Compute.V1.PreservedState.MetadataEntry,
    map: true
end

defmodule Google.Cloud.Compute.V1.PreservedStatePreservedDisk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_delete, 464_761_403, proto3_optional: true, type: :string, json_name: "autoDelete"
  field :mode, 3_357_091, proto3_optional: true, type: :string
  field :source, 177_235_995, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PreviewRouterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :router, 148_608_841, type: :string, deprecated: false

  field :router_resource, 155_222_084,
    type: Google.Cloud.Compute.V1.Router,
    json_name: "routerResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.Project do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :common_instance_metadata, 185_794_117,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.Metadata,
    json_name: "commonInstanceMetadata"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :default_network_tier, 471_753_361,
    proto3_optional: true,
    type: :string,
    json_name: "defaultNetworkTier"

  field :default_service_account, 298_712_229,
    proto3_optional: true,
    type: :string,
    json_name: "defaultServiceAccount"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :enabled_features, 469_017_467,
    repeated: true,
    type: :string,
    json_name: "enabledFeatures"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :quotas, 125_341_947, repeated: true, type: Google.Cloud.Compute.V1.Quota
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :usage_export_location, 347_543_874,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.UsageExportLocation,
    json_name: "usageExportLocation"

  field :xpn_project_status, 228_419_265,
    proto3_optional: true,
    type: :string,
    json_name: "xpnProjectStatus"
end

defmodule Google.Cloud.Compute.V1.ProjectsDisableXpnResourceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :xpn_resource, 133_384_631,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.XpnResourceId,
    json_name: "xpnResource"
end

defmodule Google.Cloud.Compute.V1.ProjectsEnableXpnResourceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :xpn_resource, 133_384_631,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.XpnResourceId,
    json_name: "xpnResource"
end

defmodule Google.Cloud.Compute.V1.ProjectsGetXpnResources do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :resources, 164_412_965, repeated: true, type: Google.Cloud.Compute.V1.XpnResourceId
end

defmodule Google.Cloud.Compute.V1.ProjectsListXpnHostsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :organization, 105_180_467, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ProjectsSetDefaultNetworkTierRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_tier, 517_397_843, proto3_optional: true, type: :string, json_name: "networkTier"
end

defmodule Google.Cloud.Compute.V1.PublicAdvertisedPrefix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :dns_verification_ip, 241_011_381,
    proto3_optional: true,
    type: :string,
    json_name: "dnsVerificationIp"

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :ip_cidr_range, 98_117_322, proto3_optional: true, type: :string, json_name: "ipCidrRange"
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :public_delegated_prefixs, 425_811_723,
    repeated: true,
    type: Google.Cloud.Compute.V1.PublicAdvertisedPrefixPublicDelegatedPrefix,
    json_name: "publicDelegatedPrefixs"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :shared_secret, 381_932_490,
    proto3_optional: true,
    type: :string,
    json_name: "sharedSecret"

  field :status, 181_260_274, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PublicAdvertisedPrefixList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.PublicAdvertisedPrefix
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.PublicAdvertisedPrefixPublicDelegatedPrefix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_range, 145_092_645, proto3_optional: true, type: :string, json_name: "ipRange"
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :project, 227_560_217, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :status, 181_260_274, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PublicDelegatedPrefix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :ip_cidr_range, 98_117_322, proto3_optional: true, type: :string, json_name: "ipCidrRange"

  field :is_live_migration, 511_823_856,
    proto3_optional: true,
    type: :bool,
    json_name: "isLiveMigration"

  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :parent_prefix, 15_233_991,
    proto3_optional: true,
    type: :string,
    json_name: "parentPrefix"

  field :public_delegated_sub_prefixs, 188_940_044,
    repeated: true,
    type: Google.Cloud.Compute.V1.PublicDelegatedPrefixPublicDelegatedSubPrefix,
    json_name: "publicDelegatedSubPrefixs"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :status, 181_260_274, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PublicDelegatedPrefixAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.PublicDelegatedPrefixesScopedList
end

defmodule Google.Cloud.Compute.V1.PublicDelegatedPrefixAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.PublicDelegatedPrefixAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.PublicDelegatedPrefixList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.PublicDelegatedPrefix
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.PublicDelegatedPrefixPublicDelegatedSubPrefix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegatee_project, 414_860_634,
    proto3_optional: true,
    type: :string,
    json_name: "delegateeProject"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :ip_cidr_range, 98_117_322, proto3_optional: true, type: :string, json_name: "ipCidrRange"
  field :is_address, 352_617_951, proto3_optional: true, type: :bool, json_name: "isAddress"
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :status, 181_260_274, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.PublicDelegatedPrefixesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :public_delegated_prefixes, 315_261_206,
    repeated: true,
    type: Google.Cloud.Compute.V1.PublicDelegatedPrefix,
    json_name: "publicDelegatedPrefixes"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.Quota do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :limit, 102_976_443, proto3_optional: true, type: :double
  field :metric, 533_067_184, proto3_optional: true, type: :string
  field :owner, 106_164_915, proto3_optional: true, type: :string
  field :usage, 111_574_433, proto3_optional: true, type: :double
end

defmodule Google.Cloud.Compute.V1.RawDisk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :container_type, 318_809_144,
    proto3_optional: true,
    type: :string,
    json_name: "containerType"

  field :sha1_checksum, 314_444_349,
    proto3_optional: true,
    type: :string,
    json_name: "sha1Checksum"

  field :source, 177_235_995, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.RecreateInstancesInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_managers_recreate_instances_request_resource, 21_405_952,
    type: Google.Cloud.Compute.V1.InstanceGroupManagersRecreateInstancesRequest,
    json_name: "instanceGroupManagersRecreateInstancesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.RecreateInstancesRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_group_managers_recreate_request_resource, 170_999_316,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupManagersRecreateRequest,
    json_name: "regionInstanceGroupManagersRecreateRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.Reference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :reference_type, 247_521_198,
    proto3_optional: true,
    type: :string,
    json_name: "referenceType"

  field :referrer, 351_173_663, proto3_optional: true, type: :string
  field :target, 192_835_985, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.Region do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :deprecated, 515_138_995,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.DeprecationStatus

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :quotas, 125_341_947, repeated: true, type: Google.Cloud.Compute.V1.Quota
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :status, 181_260_274, proto3_optional: true, type: :string
  field :supports_pzs, 83_983_214, proto3_optional: true, type: :bool, json_name: "supportsPzs"
  field :zones, 116_085_319, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.RegionAutoscalerList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Autoscaler
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.RegionDiskTypeList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.DiskType
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.RegionDisksAddResourcePoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_policies, 22_220_385,
    repeated: true,
    type: :string,
    json_name: "resourcePolicies"
end

defmodule Google.Cloud.Compute.V1.RegionDisksRemoveResourcePoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_policies, 22_220_385,
    repeated: true,
    type: :string,
    json_name: "resourcePolicies"
end

defmodule Google.Cloud.Compute.V1.RegionDisksResizeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :size_gb, 494_929_369, proto3_optional: true, type: :int64, json_name: "sizeGb"
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.InstanceGroup
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagerDeleteInstanceConfigReq do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :names, 104_585_032, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagerList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.InstanceGroupManager
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagerPatchInstanceConfigReq do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :per_instance_configs, 526_265_001,
    repeated: true,
    type: Google.Cloud.Compute.V1.PerInstanceConfig,
    json_name: "perInstanceConfigs"
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagerUpdateInstanceConfigReq do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :per_instance_configs, 526_265_001,
    repeated: true,
    type: Google.Cloud.Compute.V1.PerInstanceConfig,
    json_name: "perInstanceConfigs"
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersAbandonInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersApplyUpdatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :all_instances, 403_676_512, proto3_optional: true, type: :bool, json_name: "allInstances"
  field :instances, 29_097_598, repeated: true, type: :string

  field :minimal_action, 270_567_060,
    proto3_optional: true,
    type: :string,
    json_name: "minimalAction"

  field :most_disruptive_allowed_action, 66_103_053,
    proto3_optional: true,
    type: :string,
    json_name: "mostDisruptiveAllowedAction"
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersCreateInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: Google.Cloud.Compute.V1.PerInstanceConfig
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersDeleteInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: :string

  field :skip_instances_on_validation_error, 40_631_073,
    proto3_optional: true,
    type: :bool,
    json_name: "skipInstancesOnValidationError"
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersListErrorsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.InstanceManagedByIgmError

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersListInstanceConfigsResp do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.PerInstanceConfig

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersListInstancesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :managed_instances, 336_219_614,
    repeated: true,
    type: Google.Cloud.Compute.V1.ManagedInstance,
    json_name: "managedInstances"

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersRecreateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersSetTargetPoolsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :target_pools, 336_072_617, repeated: true, type: :string, json_name: "targetPools"
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagersSetTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_template, 309_248_228,
    proto3_optional: true,
    type: :string,
    json_name: "instanceTemplate"
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupsListInstances do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.InstanceWithNamedPorts
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupsListInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_state, 92_223_591,
    proto3_optional: true,
    type: :string,
    json_name: "instanceState"

  field :port_name, 41_534_345, proto3_optional: true, type: :string, json_name: "portName"
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupsSetNamedPortsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string

  field :named_ports, 427_598_732,
    repeated: true,
    type: Google.Cloud.Compute.V1.NamedPort,
    json_name: "namedPorts"
end

defmodule Google.Cloud.Compute.V1.RegionList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Region
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policys, 410_985_794,
    repeated: true,
    type:
      Google.Cloud.Compute.V1.RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy,
    json_name: "firewallPolicys"

  field :firewalls, 272_245_619, repeated: true, type: Google.Cloud.Compute.V1.Firewall
end

defmodule Google.Cloud.Compute.V1.RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :display_name, 4_473_832, proto3_optional: true, type: :string, json_name: "displayName"
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :rules, 108_873_975, repeated: true, type: Google.Cloud.Compute.V1.FirewallPolicyRule
  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.RegionSetLabelsRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.RegionSetLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :label_fingerprint, 178_124_825,
    proto3_optional: true,
    type: :string,
    json_name: "labelFingerprint"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.RegionSetLabelsRequest.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Compute.V1.RegionSetPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bindings, 403_251_854, repeated: true, type: Google.Cloud.Compute.V1.Binding
  field :etag, 3_123_477, proto3_optional: true, type: :string
  field :policy, 91_071_794, proto3_optional: true, type: Google.Cloud.Compute.V1.Policy
end

defmodule Google.Cloud.Compute.V1.RegionTargetHttpsProxiesSetSslCertificatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ssl_certificates, 366_006_543,
    repeated: true,
    type: :string,
    json_name: "sslCertificates"
end

defmodule Google.Cloud.Compute.V1.RegionUrlMapsValidateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource, 195_806_222, proto3_optional: true, type: Google.Cloud.Compute.V1.UrlMap
end

defmodule Google.Cloud.Compute.V1.RemoveAssociationFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.RemoveAssociationNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.RemoveAssociationRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.RemoveHealthCheckTargetPoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :target_pool, 62_796_298, type: :string, json_name: "targetPool", deprecated: false

  field :target_pools_remove_health_check_request_resource, 304_985_011,
    type: Google.Cloud.Compute.V1.TargetPoolsRemoveHealthCheckRequest,
    json_name: "targetPoolsRemoveHealthCheckRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.RemoveInstanceTargetPoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :target_pool, 62_796_298, type: :string, json_name: "targetPool", deprecated: false

  field :target_pools_remove_instance_request_resource, 29_548_547,
    type: Google.Cloud.Compute.V1.TargetPoolsRemoveInstanceRequest,
    json_name: "targetPoolsRemoveInstanceRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.RemoveInstancesInstanceGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group, 81_095_253, type: :string, json_name: "instanceGroup", deprecated: false

  field :instance_groups_remove_instances_request_resource, 390_981_817,
    type: Google.Cloud.Compute.V1.InstanceGroupsRemoveInstancesRequest,
    json_name: "instanceGroupsRemoveInstancesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.RemovePeeringNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network, 232_872_494, type: :string, deprecated: false

  field :networks_remove_peering_request_resource, 421_162_494,
    type: Google.Cloud.Compute.V1.NetworksRemovePeeringRequest,
    json_name: "networksRemovePeeringRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.RemoveResourcePoliciesDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false

  field :disks_remove_resource_policies_request_resource, 436_756_718,
    type: Google.Cloud.Compute.V1.DisksRemoveResourcePoliciesRequest,
    json_name: "disksRemoveResourcePoliciesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.RemoveResourcePoliciesInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :instances_remove_resource_policies_request_resource, 49_229_558,
    type: Google.Cloud.Compute.V1.InstancesRemoveResourcePoliciesRequest,
    json_name: "instancesRemoveResourcePoliciesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.RemoveResourcePoliciesRegionDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_disks_remove_resource_policies_request_resource, 8_741_283,
    type: Google.Cloud.Compute.V1.RegionDisksRemoveResourcePoliciesRequest,
    json_name: "regionDisksRemoveResourcePoliciesRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.RemoveRuleFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.RemoveRuleNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.RemoveRuleRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall_policy, 498_173_265,
    type: :string,
    json_name: "firewallPolicy",
    deprecated: false

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.RemoveRuleSecurityPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :priority, 445_151_652, proto3_optional: true, type: :int32
  field :project, 227_560_217, type: :string, deprecated: false

  field :security_policy, 171_082_513,
    type: :string,
    json_name: "securityPolicy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.RequestMirrorPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    proto3_optional: true,
    type: :string,
    json_name: "backendService"
end

defmodule Google.Cloud.Compute.V1.Reservation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :commitment, 482_134_805, proto3_optional: true, type: :string

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :satisfies_pzs, 480_964_267, proto3_optional: true, type: :bool, json_name: "satisfiesPzs"
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :share_settings, 266_668_163,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ShareSettings,
    json_name: "shareSettings"

  field :specific_reservation, 404_901_951,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.AllocationSpecificSKUReservation,
    json_name: "specificReservation"

  field :specific_reservation_required, 226_550_687,
    proto3_optional: true,
    type: :bool,
    json_name: "specificReservationRequired"

  field :status, 181_260_274, proto3_optional: true, type: :string
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ReservationAffinity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :consume_reservation_type, 300_736_944,
    proto3_optional: true,
    type: :string,
    json_name: "consumeReservationType"

  field :key, 106_079, proto3_optional: true, type: :string
  field :values, 249_928_994, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ReservationAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.ReservationsScopedList
end

defmodule Google.Cloud.Compute.V1.ReservationAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.ReservationAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ReservationList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Reservation
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ReservationsResizeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :specific_sku_count, 13_890_720,
    proto3_optional: true,
    type: :int64,
    json_name: "specificSkuCount"
end

defmodule Google.Cloud.Compute.V1.ReservationsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reservations, 399_717_927, repeated: true, type: Google.Cloud.Compute.V1.Reservation
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ResetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ResizeDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false

  field :disks_resize_request_resource, 78_307_616,
    type: Google.Cloud.Compute.V1.DisksResizeRequest,
    json_name: "disksResizeRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ResizeInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :size, 3_530_753, type: :int32, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ResizeRegionDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk, 3_083_677, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_disks_resize_request_resource, 446_633_237,
    type: Google.Cloud.Compute.V1.RegionDisksResizeRequest,
    json_name: "regionDisksResizeRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.ResizeRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :size, 3_530_753, type: :int32, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ResizeReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :reservation, 47_530_956, type: :string, deprecated: false

  field :reservations_resize_request_resource, 389_262_801,
    type: Google.Cloud.Compute.V1.ReservationsResizeRequest,
    json_name: "reservationsResizeRequestResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.ResourceCommitment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :accelerator_type, 138_031_246,
    proto3_optional: true,
    type: :string,
    json_name: "acceleratorType"

  field :amount, 196_759_640, proto3_optional: true, type: :int64
  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ResourceGroupReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :group, 98_629_247, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ResourcePoliciesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_policies, 22_220_385,
    repeated: true,
    type: Google.Cloud.Compute.V1.ResourcePolicy,
    json_name: "resourcePolicies"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ResourcePolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :group_placement_policy, 10_931_596,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicyGroupPlacementPolicy,
    json_name: "groupPlacementPolicy"

  field :id, 3355, proto3_optional: true, type: :uint64

  field :instance_schedule_policy, 344_877_104,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicyInstanceSchedulePolicy,
    json_name: "instanceSchedulePolicy"

  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string

  field :resource_status, 249_429_315,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicyResourceStatus,
    json_name: "resourceStatus"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :snapshot_schedule_policy, 218_131_295,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicySnapshotSchedulePolicy,
    json_name: "snapshotSchedulePolicy"

  field :status, 181_260_274, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.ResourcePoliciesScopedList
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :etag, 3_123_477, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.ResourcePolicyAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyDailyCycle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :days_in_cycle, 369_790_004, proto3_optional: true, type: :int32, json_name: "daysInCycle"
  field :duration, 155_471_252, proto3_optional: true, type: :string
  field :start_time, 37_467_274, proto3_optional: true, type: :string, json_name: "startTime"
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyGroupPlacementPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :availability_domain_count, 12_453_432,
    proto3_optional: true,
    type: :int32,
    json_name: "availabilityDomainCount"

  field :collocation, 511_156_533, proto3_optional: true, type: :string
  field :vm_count, 261_463_431, proto3_optional: true, type: :int32, json_name: "vmCount"
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyHourlyCycle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :duration, 155_471_252, proto3_optional: true, type: :string

  field :hours_in_cycle, 526_763_132,
    proto3_optional: true,
    type: :int32,
    json_name: "hoursInCycle"

  field :start_time, 37_467_274, proto3_optional: true, type: :string, json_name: "startTime"
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyInstanceSchedulePolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :expiration_time, 230_299_229,
    proto3_optional: true,
    type: :string,
    json_name: "expirationTime"

  field :start_time, 37_467_274, proto3_optional: true, type: :string, json_name: "startTime"
  field :time_zone, 36_848_094, proto3_optional: true, type: :string, json_name: "timeZone"

  field :vm_start_schedule, 17_762_396,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicyInstanceSchedulePolicySchedule,
    json_name: "vmStartSchedule"

  field :vm_stop_schedule, 426_242_732,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicyInstanceSchedulePolicySchedule,
    json_name: "vmStopSchedule"
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyInstanceSchedulePolicySchedule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :schedule, 375_820_951, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :etag, 3_123_477, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.ResourcePolicy
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyResourceStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_schedule_policy, 344_877_104,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicyResourceStatusInstanceSchedulePolicyStatus,
    json_name: "instanceSchedulePolicy"
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyResourceStatusInstanceSchedulePolicyStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :last_run_start_time, 303_069_063,
    proto3_optional: true,
    type: :string,
    json_name: "lastRunStartTime"

  field :next_run_start_time, 318_642_570,
    proto3_optional: true,
    type: :string,
    json_name: "nextRunStartTime"
end

defmodule Google.Cloud.Compute.V1.ResourcePolicySnapshotSchedulePolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :retention_policy, 68_625_779,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicySnapshotSchedulePolicyRetentionPolicy,
    json_name: "retentionPolicy"

  field :schedule, 375_820_951,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicySnapshotSchedulePolicySchedule

  field :snapshot_properties, 185_371_278,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicySnapshotSchedulePolicySnapshotProperties,
    json_name: "snapshotProperties"
end

defmodule Google.Cloud.Compute.V1.ResourcePolicySnapshotSchedulePolicyRetentionPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_retention_days, 324_296_979,
    proto3_optional: true,
    type: :int32,
    json_name: "maxRetentionDays"

  field :on_source_disk_delete, 321_955_529,
    proto3_optional: true,
    type: :string,
    json_name: "onSourceDiskDelete"
end

defmodule Google.Cloud.Compute.V1.ResourcePolicySnapshotSchedulePolicySchedule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :daily_schedule, 86_159_869,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicyDailyCycle,
    json_name: "dailySchedule"

  field :hourly_schedule, 38_328_485,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicyHourlyCycle,
    json_name: "hourlySchedule"

  field :weekly_schedule, 359_548_053,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ResourcePolicyWeeklyCycle,
    json_name: "weeklySchedule"
end

defmodule Google.Cloud.Compute.V1.ResourcePolicySnapshotSchedulePolicySnapshotProperties.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.ResourcePolicySnapshotSchedulePolicySnapshotProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chain_name, 68_644_169, proto3_optional: true, type: :string, json_name: "chainName"
  field :guest_flush, 385_550_813, proto3_optional: true, type: :bool, json_name: "guestFlush"

  field :labels, 500_195_327,
    repeated: true,
    type:
      Google.Cloud.Compute.V1.ResourcePolicySnapshotSchedulePolicySnapshotProperties.LabelsEntry,
    map: true

  field :storage_locations, 328_005_274,
    repeated: true,
    type: :string,
    json_name: "storageLocations"
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyWeeklyCycle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :day_of_weeks, 257_871_834,
    repeated: true,
    type: Google.Cloud.Compute.V1.ResourcePolicyWeeklyCycleDayOfWeek,
    json_name: "dayOfWeeks"
end

defmodule Google.Cloud.Compute.V1.ResourcePolicyWeeklyCycleDayOfWeek do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :day, 99228, proto3_optional: true, type: :string
  field :duration, 155_471_252, proto3_optional: true, type: :string
  field :start_time, 37_467_274, proto3_optional: true, type: :string, json_name: "startTime"
end

defmodule Google.Cloud.Compute.V1.ResumeInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.Route do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :as_paths, 137_568_929,
    repeated: true,
    type: Google.Cloud.Compute.V1.RouteAsPath,
    json_name: "asPaths"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :dest_range, 381_327_712, proto3_optional: true, type: :string, json_name: "destRange"
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string

  field :next_hop_gateway, 377_175_298,
    proto3_optional: true,
    type: :string,
    json_name: "nextHopGateway"

  field :next_hop_ilb, 198_679_901, proto3_optional: true, type: :string, json_name: "nextHopIlb"

  field :next_hop_instance, 393_508_247,
    proto3_optional: true,
    type: :string,
    json_name: "nextHopInstance"

  field :next_hop_ip, 110_319_529, proto3_optional: true, type: :string, json_name: "nextHopIp"

  field :next_hop_network, 262_295_788,
    proto3_optional: true,
    type: :string,
    json_name: "nextHopNetwork"

  field :next_hop_peering, 412_682_750,
    proto3_optional: true,
    type: :string,
    json_name: "nextHopPeering"

  field :next_hop_vpn_tunnel, 519_844_501,
    proto3_optional: true,
    type: :string,
    json_name: "nextHopVpnTunnel"

  field :priority, 445_151_652, proto3_optional: true, type: :uint32
  field :route_status, 418_162_344, proto3_optional: true, type: :string, json_name: "routeStatus"
  field :route_type, 375_888_752, proto3_optional: true, type: :string, json_name: "routeType"
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :tags, 3_552_281, repeated: true, type: :string
  field :warnings, 498_091_095, repeated: true, type: Google.Cloud.Compute.V1.Warnings
end

defmodule Google.Cloud.Compute.V1.RouteAsPath do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :as_lists, 134_112_584, repeated: true, type: :uint32, json_name: "asLists"

  field :path_segment_type, 513_464_992,
    proto3_optional: true,
    type: :string,
    json_name: "pathSegmentType"
end

defmodule Google.Cloud.Compute.V1.RouteList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Route
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.Router do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bgp, 97483, proto3_optional: true, type: Google.Cloud.Compute.V1.RouterBgp

  field :bgp_peers, 452_695_773,
    repeated: true,
    type: Google.Cloud.Compute.V1.RouterBgpPeer,
    json_name: "bgpPeers"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :encrypted_interconnect_router, 297_996_575,
    proto3_optional: true,
    type: :bool,
    json_name: "encryptedInterconnectRouter"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :interfaces, 12_073_562, repeated: true, type: Google.Cloud.Compute.V1.RouterInterface
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :nats, 3_373_938, repeated: true, type: Google.Cloud.Compute.V1.RouterNat
  field :network, 232_872_494, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
end

defmodule Google.Cloud.Compute.V1.RouterAdvertisedIpRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :range, 108_280_125, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.RouterAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.RoutersScopedList
end

defmodule Google.Cloud.Compute.V1.RouterAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.RouterAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.RouterBgp do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :advertise_mode, 312_134_331,
    proto3_optional: true,
    type: :string,
    json_name: "advertiseMode"

  field :advertised_groups, 21_065_526,
    repeated: true,
    type: :string,
    json_name: "advertisedGroups"

  field :advertised_ip_ranges, 35_449_932,
    repeated: true,
    type: Google.Cloud.Compute.V1.RouterAdvertisedIpRange,
    json_name: "advertisedIpRanges"

  field :asn, 96892, proto3_optional: true, type: :uint32

  field :keepalive_interval, 276_771_516,
    proto3_optional: true,
    type: :uint32,
    json_name: "keepaliveInterval"
end

defmodule Google.Cloud.Compute.V1.RouterBgpPeer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :advertise_mode, 312_134_331,
    proto3_optional: true,
    type: :string,
    json_name: "advertiseMode"

  field :advertised_groups, 21_065_526,
    repeated: true,
    type: :string,
    json_name: "advertisedGroups"

  field :advertised_ip_ranges, 35_449_932,
    repeated: true,
    type: Google.Cloud.Compute.V1.RouterAdvertisedIpRange,
    json_name: "advertisedIpRanges"

  field :advertised_route_priority, 186_486_332,
    proto3_optional: true,
    type: :uint32,
    json_name: "advertisedRoutePriority"

  field :bfd, 97440, proto3_optional: true, type: Google.Cloud.Compute.V1.RouterBgpPeerBfd
  field :enable, 311_764_355, proto3_optional: true, type: :string
  field :enable_ipv6, 181_467_939, proto3_optional: true, type: :bool, json_name: "enableIpv6"

  field :interface_name, 437_854_673,
    proto3_optional: true,
    type: :string,
    json_name: "interfaceName"

  field :ip_address, 406_272_220, proto3_optional: true, type: :string, json_name: "ipAddress"

  field :ipv6_nexthop_address, 27_968_211,
    proto3_optional: true,
    type: :string,
    json_name: "ipv6NexthopAddress"

  field :management_type, 173_703_606,
    proto3_optional: true,
    type: :string,
    json_name: "managementType"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :peer_asn, 69_573_151, proto3_optional: true, type: :uint32, json_name: "peerAsn"

  field :peer_ip_address, 207_735_769,
    proto3_optional: true,
    type: :string,
    json_name: "peerIpAddress"

  field :peer_ipv6_nexthop_address, 491_486_608,
    proto3_optional: true,
    type: :string,
    json_name: "peerIpv6NexthopAddress"

  field :router_appliance_instance, 468_312_989,
    proto3_optional: true,
    type: :string,
    json_name: "routerApplianceInstance"
end

defmodule Google.Cloud.Compute.V1.RouterBgpPeerBfd do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :min_receive_interval, 186_981_614,
    proto3_optional: true,
    type: :uint32,
    json_name: "minReceiveInterval"

  field :min_transmit_interval, 523_282_631,
    proto3_optional: true,
    type: :uint32,
    json_name: "minTransmitInterval"

  field :multiplier, 191_331_777, proto3_optional: true, type: :uint32

  field :session_initialization_mode, 105_957_049,
    proto3_optional: true,
    type: :string,
    json_name: "sessionInitializationMode"
end

defmodule Google.Cloud.Compute.V1.RouterInterface do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_range, 145_092_645, proto3_optional: true, type: :string, json_name: "ipRange"

  field :linked_interconnect_attachment, 501_085_518,
    proto3_optional: true,
    type: :string,
    json_name: "linkedInterconnectAttachment"

  field :linked_vpn_tunnel, 352_296_953,
    proto3_optional: true,
    type: :string,
    json_name: "linkedVpnTunnel"

  field :management_type, 173_703_606,
    proto3_optional: true,
    type: :string,
    json_name: "managementType"

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :private_ip_address, 100_854_040,
    proto3_optional: true,
    type: :string,
    json_name: "privateIpAddress"

  field :redundant_interface, 523_187_303,
    proto3_optional: true,
    type: :string,
    json_name: "redundantInterface"

  field :subnetwork, 307_827_694, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.RouterList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Router
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.RouterNat do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :drain_nat_ips, 504_078_535, repeated: true, type: :string, json_name: "drainNatIps"

  field :enable_dynamic_port_allocation, 532_106_402,
    proto3_optional: true,
    type: :bool,
    json_name: "enableDynamicPortAllocation"

  field :enable_endpoint_independent_mapping, 259_441_819,
    proto3_optional: true,
    type: :bool,
    json_name: "enableEndpointIndependentMapping"

  field :endpoint_types, 502_633_807, repeated: true, type: :string, json_name: "endpointTypes"

  field :icmp_idle_timeout_sec, 3_647_562,
    proto3_optional: true,
    type: :int32,
    json_name: "icmpIdleTimeoutSec"

  field :log_config, 351_299_741,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.RouterNatLogConfig,
    json_name: "logConfig"

  field :max_ports_per_vm, 250_062_049,
    proto3_optional: true,
    type: :int32,
    json_name: "maxPortsPerVm"

  field :min_ports_per_vm, 186_193_587,
    proto3_optional: true,
    type: :int32,
    json_name: "minPortsPerVm"

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :nat_ip_allocate_option, 429_726_845,
    proto3_optional: true,
    type: :string,
    json_name: "natIpAllocateOption"

  field :nat_ips, 117_635_086, repeated: true, type: :string, json_name: "natIps"
  field :rules, 108_873_975, repeated: true, type: Google.Cloud.Compute.V1.RouterNatRule

  field :source_subnetwork_ip_ranges_to_nat, 252_213_211,
    proto3_optional: true,
    type: :string,
    json_name: "sourceSubnetworkIpRangesToNat"

  field :subnetworks, 415_853_125,
    repeated: true,
    type: Google.Cloud.Compute.V1.RouterNatSubnetworkToNat

  field :tcp_established_idle_timeout_sec, 223_098_349,
    proto3_optional: true,
    type: :int32,
    json_name: "tcpEstablishedIdleTimeoutSec"

  field :tcp_time_wait_timeout_sec, 513_596_925,
    proto3_optional: true,
    type: :int32,
    json_name: "tcpTimeWaitTimeoutSec"

  field :tcp_transitory_idle_timeout_sec, 205_028_774,
    proto3_optional: true,
    type: :int32,
    json_name: "tcpTransitoryIdleTimeoutSec"

  field :udp_idle_timeout_sec, 64_919_878,
    proto3_optional: true,
    type: :int32,
    json_name: "udpIdleTimeoutSec"
end

defmodule Google.Cloud.Compute.V1.RouterNatLogConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable, 311_764_355, proto3_optional: true, type: :bool
  field :filter, 336_120_696, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.RouterNatRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :action, 187_661_878,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.RouterNatRuleAction

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :match, 103_668_165, proto3_optional: true, type: :string
  field :rule_number, 535_211_500, proto3_optional: true, type: :uint32, json_name: "ruleNumber"
end

defmodule Google.Cloud.Compute.V1.RouterNatRuleAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :source_nat_active_ips, 210_378_229,
    repeated: true,
    type: :string,
    json_name: "sourceNatActiveIps"

  field :source_nat_drain_ips, 340_812_451,
    repeated: true,
    type: :string,
    json_name: "sourceNatDrainIps"
end

defmodule Google.Cloud.Compute.V1.RouterNatSubnetworkToNat do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :secondary_ip_range_names, 264_315_097,
    repeated: true,
    type: :string,
    json_name: "secondaryIpRangeNames"

  field :source_ip_ranges_to_nat, 388_310_386,
    repeated: true,
    type: :string,
    json_name: "sourceIpRangesToNat"
end

defmodule Google.Cloud.Compute.V1.RouterStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :best_routes, 395_826_693,
    repeated: true,
    type: Google.Cloud.Compute.V1.Route,
    json_name: "bestRoutes"

  field :best_routes_for_router, 119_389_689,
    repeated: true,
    type: Google.Cloud.Compute.V1.Route,
    json_name: "bestRoutesForRouter"

  field :bgp_peer_status, 218_459_131,
    repeated: true,
    type: Google.Cloud.Compute.V1.RouterStatusBgpPeerStatus,
    json_name: "bgpPeerStatus"

  field :nat_status, 63_098_064,
    repeated: true,
    type: Google.Cloud.Compute.V1.RouterStatusNatStatus,
    json_name: "natStatus"

  field :network, 232_872_494, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.RouterStatusBgpPeerStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :advertised_routes, 333_393_068,
    repeated: true,
    type: Google.Cloud.Compute.V1.Route,
    json_name: "advertisedRoutes"

  field :bfd_status, 395_631_729,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.BfdStatus,
    json_name: "bfdStatus"

  field :ip_address, 406_272_220, proto3_optional: true, type: :string, json_name: "ipAddress"

  field :linked_vpn_tunnel, 352_296_953,
    proto3_optional: true,
    type: :string,
    json_name: "linkedVpnTunnel"

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :num_learned_routes, 135_457_535,
    proto3_optional: true,
    type: :uint32,
    json_name: "numLearnedRoutes"

  field :peer_ip_address, 207_735_769,
    proto3_optional: true,
    type: :string,
    json_name: "peerIpAddress"

  field :router_appliance_instance, 468_312_989,
    proto3_optional: true,
    type: :string,
    json_name: "routerApplianceInstance"

  field :state, 109_757_585, proto3_optional: true, type: :string
  field :status, 181_260_274, proto3_optional: true, type: :string
  field :uptime, 235_379_688, proto3_optional: true, type: :string

  field :uptime_seconds, 104_736_040,
    proto3_optional: true,
    type: :string,
    json_name: "uptimeSeconds"
end

defmodule Google.Cloud.Compute.V1.RouterStatusNatStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_allocated_nat_ips, 510_794_246,
    repeated: true,
    type: :string,
    json_name: "autoAllocatedNatIps"

  field :drain_auto_allocated_nat_ips, 309_184_557,
    repeated: true,
    type: :string,
    json_name: "drainAutoAllocatedNatIps"

  field :drain_user_allocated_nat_ips, 305_268_553,
    repeated: true,
    type: :string,
    json_name: "drainUserAllocatedNatIps"

  field :min_extra_nat_ips_needed, 365_786_338,
    proto3_optional: true,
    type: :int32,
    json_name: "minExtraNatIpsNeeded"

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :num_vm_endpoints_with_nat_mappings, 512_367_468,
    proto3_optional: true,
    type: :int32,
    json_name: "numVmEndpointsWithNatMappings"

  field :rule_status, 140_223_125,
    repeated: true,
    type: Google.Cloud.Compute.V1.RouterStatusNatStatusNatRuleStatus,
    json_name: "ruleStatus"

  field :user_allocated_nat_ip_resources, 212_776_151,
    repeated: true,
    type: :string,
    json_name: "userAllocatedNatIpResources"

  field :user_allocated_nat_ips, 506_878_242,
    repeated: true,
    type: :string,
    json_name: "userAllocatedNatIps"
end

defmodule Google.Cloud.Compute.V1.RouterStatusNatStatusNatRuleStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :active_nat_ips, 208_517_077, repeated: true, type: :string, json_name: "activeNatIps"
  field :drain_nat_ips, 504_078_535, repeated: true, type: :string, json_name: "drainNatIps"

  field :min_extra_ips_needed, 353_002_756,
    proto3_optional: true,
    type: :int32,
    json_name: "minExtraIpsNeeded"

  field :num_vm_endpoints_with_nat_mappings, 512_367_468,
    proto3_optional: true,
    type: :int32,
    json_name: "numVmEndpointsWithNatMappings"

  field :rule_number, 535_211_500, proto3_optional: true, type: :int32, json_name: "ruleNumber"
end

defmodule Google.Cloud.Compute.V1.RouterStatusResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :result, 139_315_229, proto3_optional: true, type: Google.Cloud.Compute.V1.RouterStatus
end

defmodule Google.Cloud.Compute.V1.RoutersPreviewResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource, 195_806_222, proto3_optional: true, type: Google.Cloud.Compute.V1.Router
end

defmodule Google.Cloud.Compute.V1.RoutersScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :routers, 311_906_890, repeated: true, type: Google.Cloud.Compute.V1.Router
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.Rule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :action, 187_661_878, proto3_optional: true, type: :string
  field :conditions, 142_882_488, repeated: true, type: Google.Cloud.Compute.V1.Condition
  field :description, 422_937_596, proto3_optional: true, type: :string
  field :ins, 104_430, repeated: true, type: :string

  field :log_configs, 152_873_846,
    repeated: true,
    type: Google.Cloud.Compute.V1.LogConfig,
    json_name: "logConfigs"

  field :not_ins, 518_443_138, repeated: true, type: :string, json_name: "notIns"
  field :permissions, 59_962_500, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.SSLHealthCheck do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port, 3_446_913, proto3_optional: true, type: :int32
  field :port_name, 41_534_345, proto3_optional: true, type: :string, json_name: "portName"

  field :port_specification, 51_590_597,
    proto3_optional: true,
    type: :string,
    json_name: "portSpecification"

  field :proxy_header, 160_374_142, proto3_optional: true, type: :string, json_name: "proxyHeader"
  field :request, 21_951_119, proto3_optional: true, type: :string
  field :response, 196_547_649, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.SavedAttachedDisk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_delete, 464_761_403, proto3_optional: true, type: :bool, json_name: "autoDelete"
  field :boot, 3_029_746, proto3_optional: true, type: :bool
  field :device_name, 67_541_716, proto3_optional: true, type: :string, json_name: "deviceName"

  field :disk_encryption_key, 271_660_677,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "diskEncryptionKey"

  field :disk_size_gb, 316_263_735, proto3_optional: true, type: :int64, json_name: "diskSizeGb"
  field :disk_type, 93_009_052, proto3_optional: true, type: :string, json_name: "diskType"

  field :guest_os_features, 79_294_545,
    repeated: true,
    type: Google.Cloud.Compute.V1.GuestOsFeature,
    json_name: "guestOsFeatures"

  field :index, 100_346_066, proto3_optional: true, type: :int32
  field :interface, 502_623_545, proto3_optional: true, type: :string
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :licenses, 337_642_578, repeated: true, type: :string
  field :mode, 3_357_091, proto3_optional: true, type: :string
  field :source, 177_235_995, proto3_optional: true, type: :string

  field :storage_bytes, 424_631_719,
    proto3_optional: true,
    type: :int64,
    json_name: "storageBytes"

  field :storage_bytes_status, 490_739_082,
    proto3_optional: true,
    type: :string,
    json_name: "storageBytesStatus"

  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.SavedDisk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :architecture, 302_803_283, proto3_optional: true, type: :string
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :source_disk, 451_753_793, proto3_optional: true, type: :string, json_name: "sourceDisk"

  field :storage_bytes, 424_631_719,
    proto3_optional: true,
    type: :int64,
    json_name: "storageBytes"

  field :storage_bytes_status, 490_739_082,
    proto3_optional: true,
    type: :string,
    json_name: "storageBytesStatus"
end

defmodule Google.Cloud.Compute.V1.ScalingScheduleStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :last_start_time, 34_545_107,
    proto3_optional: true,
    type: :string,
    json_name: "lastStartTime"

  field :next_start_time, 97_270_102,
    proto3_optional: true,
    type: :string,
    json_name: "nextStartTime"

  field :state, 109_757_585, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.Scheduling do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :automatic_restart, 350_821_371,
    proto3_optional: true,
    type: :bool,
    json_name: "automaticRestart"

  field :instance_termination_action, 107_380_667,
    proto3_optional: true,
    type: :string,
    json_name: "instanceTerminationAction"

  field :location_hint, 350_519_505,
    proto3_optional: true,
    type: :string,
    json_name: "locationHint"

  field :min_node_cpus, 317_231_675, proto3_optional: true, type: :int32, json_name: "minNodeCpus"

  field :node_affinities, 461_799_971,
    repeated: true,
    type: Google.Cloud.Compute.V1.SchedulingNodeAffinity,
    json_name: "nodeAffinities"

  field :on_host_maintenance, 64_616_796,
    proto3_optional: true,
    type: :string,
    json_name: "onHostMaintenance"

  field :preemptible, 324_203_169, proto3_optional: true, type: :bool

  field :provisioning_model, 494_423,
    proto3_optional: true,
    type: :string,
    json_name: "provisioningModel"
end

defmodule Google.Cloud.Compute.V1.SchedulingNodeAffinity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 106_079, proto3_optional: true, type: :string
  field :operator, 36_317_348, proto3_optional: true, type: :string
  field :values, 249_928_994, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ScratchDisks do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_gb, 60_990_141, proto3_optional: true, type: :int32, json_name: "diskGb"
end

defmodule Google.Cloud.Compute.V1.Screenshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :contents, 506_419_994, proto3_optional: true, type: :string
  field :kind, 3_292_052, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.SecurityPoliciesAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.SecurityPoliciesScopedList
end

defmodule Google.Cloud.Compute.V1.SecurityPoliciesAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :etag, 3_123_477, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.SecurityPoliciesAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SecurityPoliciesListPreconfiguredExpressionSetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :preconfigured_expression_sets, 536_200_826,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPoliciesWafConfig,
    json_name: "preconfiguredExpressionSets"
end

defmodule Google.Cloud.Compute.V1.SecurityPoliciesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :security_policies, 127_783_791,
    repeated: true,
    type: Google.Cloud.Compute.V1.SecurityPolicy,
    json_name: "securityPolicies"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SecurityPoliciesWafConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :waf_rules, 74_899_924,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.PreconfiguredWafSet,
    json_name: "wafRules"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :adaptive_protection_config, 150_240_735,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyAdaptiveProtectionConfig,
    json_name: "adaptiveProtectionConfig"

  field :advanced_options_config, 449_276_352,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyAdvancedOptionsConfig,
    json_name: "advancedOptionsConfig"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :ddos_protection_config, 50_315_853,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyDdosProtectionConfig,
    json_name: "ddosProtectionConfig"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :recaptcha_options_config, 519_006_811,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyRecaptchaOptionsConfig,
    json_name: "recaptchaOptionsConfig"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :rules, 108_873_975, repeated: true, type: Google.Cloud.Compute.V1.SecurityPolicyRule
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyAdaptiveProtectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :layer7_ddos_defense_config, 437_316_771,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig,
    json_name: "layer7DdosDefenseConfig"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable, 311_764_355, proto3_optional: true, type: :bool

  field :rule_visibility, 453_258_293,
    proto3_optional: true,
    type: :string,
    json_name: "ruleVisibility"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyAdvancedOptionsConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :json_parsing, 282_493_529, proto3_optional: true, type: :string, json_name: "jsonParsing"
  field :log_level, 140_582_601, proto3_optional: true, type: :string, json_name: "logLevel"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyDdosProtectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ddos_protection, 275_173_268,
    proto3_optional: true,
    type: :string,
    json_name: "ddosProtection"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.SecurityPolicy
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRecaptchaOptionsConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :redirect_site_key, 447_677_034,
    proto3_optional: true,
    type: :string,
    json_name: "redirectSiteKey"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :security_policy, 171_082_513,
    proto3_optional: true,
    type: :string,
    json_name: "securityPolicy"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :action, 187_661_878, proto3_optional: true, type: :string
  field :description, 422_937_596, proto3_optional: true, type: :string

  field :header_action, 328_077_352,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyRuleHttpHeaderAction,
    json_name: "headerAction"

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :match, 103_668_165,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyRuleMatcher

  field :preview, 218_686_408, proto3_optional: true, type: :bool
  field :priority, 445_151_652, proto3_optional: true, type: :int32

  field :rate_limit_options, 67_544_315,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyRuleRateLimitOptions,
    json_name: "rateLimitOptions"

  field :redirect_options, 163_285_307,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyRuleRedirectOptions,
    json_name: "redirectOptions"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRuleHttpHeaderAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :request_headers_to_adds, 87_987_661,
    repeated: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyRuleHttpHeaderActionHttpHeaderOption,
    json_name: "requestHeadersToAdds"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRuleHttpHeaderActionHttpHeaderOption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header_name, 110_223_613, proto3_optional: true, type: :string, json_name: "headerName"
  field :header_value, 203_094_335, proto3_optional: true, type: :string, json_name: "headerValue"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRuleMatcher do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :config, 255_820_610,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyRuleMatcherConfig

  field :expr, 3_127_797, proto3_optional: true, type: Google.Cloud.Compute.V1.Expr

  field :versioned_expr, 322_286_013,
    proto3_optional: true,
    type: :string,
    json_name: "versionedExpr"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRuleMatcherConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :src_ip_ranges, 432_128_083, repeated: true, type: :string, json_name: "srcIpRanges"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRuleRateLimitOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ban_duration_sec, 42_896_726,
    proto3_optional: true,
    type: :int32,
    json_name: "banDurationSec"

  field :ban_threshold, 501_208_123,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyRuleRateLimitOptionsThreshold,
    json_name: "banThreshold"

  field :conform_action, 517_612_367,
    proto3_optional: true,
    type: :string,
    json_name: "conformAction"

  field :enforce_on_key, 416_648_956,
    proto3_optional: true,
    type: :string,
    json_name: "enforceOnKey"

  field :enforce_on_key_name, 132_555_246,
    proto3_optional: true,
    type: :string,
    json_name: "enforceOnKeyName"

  field :exceed_action, 167_159_073,
    proto3_optional: true,
    type: :string,
    json_name: "exceedAction"

  field :exceed_redirect_options, 473_646_694,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyRuleRedirectOptions,
    json_name: "exceedRedirectOptions"

  field :rate_limit_threshold, 315_875_208,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SecurityPolicyRuleRateLimitOptionsThreshold,
    json_name: "rateLimitThreshold"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRuleRateLimitOptionsThreshold do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :count, 94_851_343, proto3_optional: true, type: :int32
  field :interval_sec, 41_084_375, proto3_optional: true, type: :int32, json_name: "intervalSec"
end

defmodule Google.Cloud.Compute.V1.SecurityPolicyRuleRedirectOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target, 192_835_985, proto3_optional: true, type: :string
  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.SecuritySettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_tls_policy, 462_325_226,
    proto3_optional: true,
    type: :string,
    json_name: "clientTlsPolicy"

  field :subject_alt_names, 330_029_535,
    repeated: true,
    type: :string,
    json_name: "subjectAltNames"
end

defmodule Google.Cloud.Compute.V1.SendDiagnosticInterruptInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SendDiagnosticInterruptInstanceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Compute.V1.SerialPortOutput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :contents, 506_419_994, proto3_optional: true, type: :string
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :next, 3_377_907, proto3_optional: true, type: :int64
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :start, 109_757_538, proto3_optional: true, type: :int64
end

defmodule Google.Cloud.Compute.V1.ServerBinding do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ServiceAccount do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :email, 96_619_420, proto3_optional: true, type: :string
  field :scopes, 165_973_151, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ServiceAttachment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connected_endpoints, 72_223_688,
    repeated: true,
    type: Google.Cloud.Compute.V1.ServiceAttachmentConnectedEndpoint,
    json_name: "connectedEndpoints"

  field :connection_preference, 285_818_076,
    proto3_optional: true,
    type: :string,
    json_name: "connectionPreference"

  field :consumer_accept_lists, 402_725_703,
    repeated: true,
    type: Google.Cloud.Compute.V1.ServiceAttachmentConsumerProjectLimit,
    json_name: "consumerAcceptLists"

  field :consumer_reject_lists, 204_033_182,
    repeated: true,
    type: :string,
    json_name: "consumerRejectLists"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :domain_names, 6_450_189, repeated: true, type: :string, json_name: "domainNames"

  field :enable_proxy_protocol, 363_791_237,
    proto3_optional: true,
    type: :bool,
    json_name: "enableProxyProtocol"

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :nat_subnets, 374_785_944, repeated: true, type: :string, json_name: "natSubnets"

  field :producer_forwarding_rule, 247_927_889,
    proto3_optional: true,
    type: :string,
    json_name: "producerForwardingRule"

  field :psc_service_attachment_id, 527_695_214,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.Uint128,
    json_name: "pscServiceAttachmentId"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :target_service, 1_293_831,
    proto3_optional: true,
    type: :string,
    json_name: "targetService"
end

defmodule Google.Cloud.Compute.V1.ServiceAttachmentAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.ServiceAttachmentsScopedList
end

defmodule Google.Cloud.Compute.V1.ServiceAttachmentAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.ServiceAttachmentAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ServiceAttachmentConnectedEndpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :endpoint, 130_489_749, proto3_optional: true, type: :string

  field :psc_connection_id, 292_082_397,
    proto3_optional: true,
    type: :uint64,
    json_name: "pscConnectionId"

  field :status, 181_260_274, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.ServiceAttachmentConsumerProjectLimit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection_limit, 131_403_546,
    proto3_optional: true,
    type: :uint32,
    json_name: "connectionLimit"

  field :project_id_or_num, 349_783_336,
    proto3_optional: true,
    type: :string,
    json_name: "projectIdOrNum"
end

defmodule Google.Cloud.Compute.V1.ServiceAttachmentList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.ServiceAttachment
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ServiceAttachmentsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service_attachments, 307_136_806,
    repeated: true,
    type: Google.Cloud.Compute.V1.ServiceAttachment,
    json_name: "serviceAttachments"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SetBackendServiceTargetSslProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_ssl_proxies_set_backend_service_request_resource, 139_080_868,
    type: Google.Cloud.Compute.V1.TargetSslProxiesSetBackendServiceRequest,
    json_name: "targetSslProxiesSetBackendServiceRequestResource",
    deprecated: false

  field :target_ssl_proxy, 338_795_853,
    type: :string,
    json_name: "targetSslProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetBackendServiceTargetTcpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_tcp_proxies_set_backend_service_request_resource, 273_721_583,
    type: Google.Cloud.Compute.V1.TargetTcpProxiesSetBackendServiceRequest,
    json_name: "targetTcpProxiesSetBackendServiceRequestResource",
    deprecated: false

  field :target_tcp_proxy, 503_065_442,
    type: :string,
    json_name: "targetTcpProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetBackupTargetPoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :failover_ratio, 212_667_006,
    proto3_optional: true,
    type: :float,
    json_name: "failoverRatio"

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :target_pool, 62_796_298, type: :string, json_name: "targetPool", deprecated: false

  field :target_reference_resource, 523_721_712,
    type: Google.Cloud.Compute.V1.TargetReference,
    json_name: "targetReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetCertificateMapTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxies_set_certificate_map_request_resource, 467_639_099,
    type: Google.Cloud.Compute.V1.TargetHttpsProxiesSetCertificateMapRequest,
    json_name: "targetHttpsProxiesSetCertificateMapRequestResource",
    deprecated: false

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetCertificateMapTargetSslProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_ssl_proxies_set_certificate_map_request_resource, 343_984_954,
    type: Google.Cloud.Compute.V1.TargetSslProxiesSetCertificateMapRequest,
    json_name: "targetSslProxiesSetCertificateMapRequestResource",
    deprecated: false

  field :target_ssl_proxy, 338_795_853,
    type: :string,
    json_name: "targetSslProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetCommonInstanceMetadataProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metadata_resource, 291_086_110,
    type: Google.Cloud.Compute.V1.Metadata,
    json_name: "metadataResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.SetDefaultNetworkTierProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false

  field :projects_set_default_network_tier_request_resource, 126_410_762,
    type: Google.Cloud.Compute.V1.ProjectsSetDefaultNetworkTierRequest,
    json_name: "projectsSetDefaultNetworkTierRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.SetDeletionProtectionInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deletion_protection, 458_014_698,
    proto3_optional: true,
    type: :bool,
    json_name: "deletionProtection"

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :resource, 195_806_222, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetDiskAutoDeleteInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_delete, 464_761_403, type: :bool, json_name: "autoDelete", deprecated: false
  field :device_name, 67_541_716, type: :string, json_name: "deviceName", deprecated: false
  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetEdgeSecurityPolicyBackendBucketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_bucket, 91_714_037, type: :string, json_name: "backendBucket", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :security_policy_reference_resource, 204_135_024,
    type: Google.Cloud.Compute.V1.SecurityPolicyReference,
    json_name: "securityPolicyReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetEdgeSecurityPolicyBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :security_policy_reference_resource, 204_135_024,
    type: Google.Cloud.Compute.V1.SecurityPolicyReference,
    json_name: "securityPolicyReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false

  field :zone_set_policy_request_resource, 382_082_107,
    type: Google.Cloud.Compute.V1.ZoneSetPolicyRequest,
    json_name: "zoneSetPolicyRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_organization_set_policy_request_resource, 177_408_606,
    type: Google.Cloud.Compute.V1.GlobalOrganizationSetPolicyRequest,
    json_name: "globalOrganizationSetPolicyRequestResource",
    deprecated: false

  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_set_policy_request_resource, 337_048_498,
    type: Google.Cloud.Compute.V1.GlobalSetPolicyRequest,
    json_name: "globalSetPolicyRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false

  field :zone_set_policy_request_resource, 382_082_107,
    type: Google.Cloud.Compute.V1.ZoneSetPolicyRequest,
    json_name: "zoneSetPolicyRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyInstanceTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_set_policy_request_resource, 337_048_498,
    type: Google.Cloud.Compute.V1.GlobalSetPolicyRequest,
    json_name: "globalSetPolicyRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyLicenseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_set_policy_request_resource, 337_048_498,
    type: Google.Cloud.Compute.V1.GlobalSetPolicyRequest,
    json_name: "globalSetPolicyRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyMachineImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_set_policy_request_resource, 337_048_498,
    type: Google.Cloud.Compute.V1.GlobalSetPolicyRequest,
    json_name: "globalSetPolicyRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_set_policy_request_resource, 337_048_498,
    type: Google.Cloud.Compute.V1.GlobalSetPolicyRequest,
    json_name: "globalSetPolicyRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyNodeGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false

  field :zone_set_policy_request_resource, 382_082_107,
    type: Google.Cloud.Compute.V1.ZoneSetPolicyRequest,
    json_name: "zoneSetPolicyRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyNodeTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_set_policy_request_resource, 276_489_091,
    type: Google.Cloud.Compute.V1.RegionSetPolicyRequest,
    json_name: "regionSetPolicyRequestResource",
    deprecated: false

  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyRegionDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_set_policy_request_resource, 276_489_091,
    type: Google.Cloud.Compute.V1.RegionSetPolicyRequest,
    json_name: "regionSetPolicyRequestResource",
    deprecated: false

  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_set_policy_request_resource, 276_489_091,
    type: Google.Cloud.Compute.V1.RegionSetPolicyRequest,
    json_name: "regionSetPolicyRequestResource",
    deprecated: false

  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false

  field :zone_set_policy_request_resource, 382_082_107,
    type: Google.Cloud.Compute.V1.ZoneSetPolicyRequest,
    json_name: "zoneSetPolicyRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyResourcePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_set_policy_request_resource, 276_489_091,
    type: Google.Cloud.Compute.V1.RegionSetPolicyRequest,
    json_name: "regionSetPolicyRequestResource",
    deprecated: false

  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicyServiceAttachmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_set_policy_request_resource, 276_489_091,
    type: Google.Cloud.Compute.V1.RegionSetPolicyRequest,
    json_name: "regionSetPolicyRequestResource",
    deprecated: false

  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicySnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_set_policy_request_resource, 337_048_498,
    type: Google.Cloud.Compute.V1.GlobalSetPolicyRequest,
    json_name: "globalSetPolicyRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetIamPolicySubnetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_set_policy_request_resource, 276_489_091,
    type: Google.Cloud.Compute.V1.RegionSetPolicyRequest,
    json_name: "regionSetPolicyRequestResource",
    deprecated: false

  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetInstanceTemplateInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_managers_set_instance_template_request_resource, 9_809_093,
    type: Google.Cloud.Compute.V1.InstanceGroupManagersSetInstanceTemplateRequest,
    json_name: "instanceGroupManagersSetInstanceTemplateRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetInstanceTemplateRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_group_managers_set_template_request_resource, 187_310_412,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupManagersSetTemplateRequest,
    json_name: "regionInstanceGroupManagersSetTemplateRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.SetLabelsDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :resource, 195_806_222, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false

  field :zone_set_labels_request_resource, 364_950_798,
    type: Google.Cloud.Compute.V1.ZoneSetLabelsRequest,
    json_name: "zoneSetLabelsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetLabelsExternalVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_set_labels_request_resource, 319_917_189,
    type: Google.Cloud.Compute.V1.GlobalSetLabelsRequest,
    json_name: "globalSetLabelsRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetLabelsForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_set_labels_request_resource, 259_357_782,
    type: Google.Cloud.Compute.V1.RegionSetLabelsRequest,
    json_name: "regionSetLabelsRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetLabelsGlobalForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_set_labels_request_resource, 319_917_189,
    type: Google.Cloud.Compute.V1.GlobalSetLabelsRequest,
    json_name: "globalSetLabelsRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetLabelsImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_set_labels_request_resource, 319_917_189,
    type: Google.Cloud.Compute.V1.GlobalSetLabelsRequest,
    json_name: "globalSetLabelsRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetLabelsInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :instances_set_labels_request_resource, 207_749_344,
    type: Google.Cloud.Compute.V1.InstancesSetLabelsRequest,
    json_name: "instancesSetLabelsRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetLabelsRegionDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_set_labels_request_resource, 259_357_782,
    type: Google.Cloud.Compute.V1.RegionSetLabelsRequest,
    json_name: "regionSetLabelsRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetLabelsSnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_set_labels_request_resource, 319_917_189,
    type: Google.Cloud.Compute.V1.GlobalSetLabelsRequest,
    json_name: "globalSetLabelsRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetLabelsVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_set_labels_request_resource, 259_357_782,
    type: Google.Cloud.Compute.V1.RegionSetLabelsRequest,
    json_name: "regionSetLabelsRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :resource, 195_806_222, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetMachineResourcesInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :instances_set_machine_resources_request_resource, 196_286_318,
    type: Google.Cloud.Compute.V1.InstancesSetMachineResourcesRequest,
    json_name: "instancesSetMachineResourcesRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetMachineTypeInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :instances_set_machine_type_request_resource, 254_157_709,
    type: Google.Cloud.Compute.V1.InstancesSetMachineTypeRequest,
    json_name: "instancesSetMachineTypeRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetMetadataInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :metadata_resource, 291_086_110,
    type: Google.Cloud.Compute.V1.Metadata,
    json_name: "metadataResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetMinCpuPlatformInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :instances_set_min_cpu_platform_request_resource, 148_459_368,
    type: Google.Cloud.Compute.V1.InstancesSetMinCpuPlatformRequest,
    json_name: "instancesSetMinCpuPlatformRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetNamedPortsInstanceGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group, 81_095_253, type: :string, json_name: "instanceGroup", deprecated: false

  field :instance_groups_set_named_ports_request_resource, 385_151_535,
    type: Google.Cloud.Compute.V1.InstanceGroupsSetNamedPortsRequest,
    json_name: "instanceGroupsSetNamedPortsRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetNamedPortsRegionInstanceGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group, 81_095_253, type: :string, json_name: "instanceGroup", deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_groups_set_named_ports_request_resource, 1_574_938,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupsSetNamedPortsRequest,
    json_name: "regionInstanceGroupsSetNamedPortsRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.SetNodeTemplateNodeGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_group, 469_958_146, type: :string, json_name: "nodeGroup", deprecated: false

  field :node_groups_set_node_template_request_resource, 117_382_321,
    type: Google.Cloud.Compute.V1.NodeGroupsSetNodeTemplateRequest,
    json_name: "nodeGroupsSetNodeTemplateRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetPrivateIpGoogleAccessSubnetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :subnetwork, 307_827_694, type: :string, deprecated: false

  field :subnetworks_set_private_ip_google_access_request_resource, 268_920_696,
    type: Google.Cloud.Compute.V1.SubnetworksSetPrivateIpGoogleAccessRequest,
    json_name: "subnetworksSetPrivateIpGoogleAccessRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetProxyHeaderTargetSslProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_ssl_proxies_set_proxy_header_request_resource, 205_284_526,
    type: Google.Cloud.Compute.V1.TargetSslProxiesSetProxyHeaderRequest,
    json_name: "targetSslProxiesSetProxyHeaderRequestResource",
    deprecated: false

  field :target_ssl_proxy, 338_795_853,
    type: :string,
    json_name: "targetSslProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetProxyHeaderTargetTcpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_tcp_proxies_set_proxy_header_request_resource, 219_958_339,
    type: Google.Cloud.Compute.V1.TargetTcpProxiesSetProxyHeaderRequest,
    json_name: "targetTcpProxiesSetProxyHeaderRequestResource",
    deprecated: false

  field :target_tcp_proxy, 503_065_442,
    type: :string,
    json_name: "targetTcpProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetQuicOverrideTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxies_set_quic_override_request_resource, 72_940_258,
    type: Google.Cloud.Compute.V1.TargetHttpsProxiesSetQuicOverrideRequest,
    json_name: "targetHttpsProxiesSetQuicOverrideRequestResource",
    deprecated: false

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetSchedulingInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :scheduling_resource, 463_181_401,
    type: Google.Cloud.Compute.V1.Scheduling,
    json_name: "schedulingResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetSecurityPolicyBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :security_policy_reference_resource, 204_135_024,
    type: Google.Cloud.Compute.V1.SecurityPolicyReference,
    json_name: "securityPolicyReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetServiceAccountInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :instances_set_service_account_request_resource, 275_550_008,
    type: Google.Cloud.Compute.V1.InstancesSetServiceAccountRequest,
    json_name: "instancesSetServiceAccountRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetShieldedInstanceIntegrityPolicyInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :shielded_instance_integrity_policy_resource, 409_169_462,
    type: Google.Cloud.Compute.V1.ShieldedInstanceIntegrityPolicy,
    json_name: "shieldedInstanceIntegrityPolicyResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetSslCertificatesRegionTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_target_https_proxies_set_ssl_certificates_request_resource, 390_693_383,
    type: Google.Cloud.Compute.V1.RegionTargetHttpsProxiesSetSslCertificatesRequest,
    json_name: "regionTargetHttpsProxiesSetSslCertificatesRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetSslCertificatesTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxies_set_ssl_certificates_request_resource, 223_122_908,
    type: Google.Cloud.Compute.V1.TargetHttpsProxiesSetSslCertificatesRequest,
    json_name: "targetHttpsProxiesSetSslCertificatesRequestResource",
    deprecated: false

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetSslCertificatesTargetSslProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_ssl_proxies_set_ssl_certificates_request_resource, 147_940_797,
    type: Google.Cloud.Compute.V1.TargetSslProxiesSetSslCertificatesRequest,
    json_name: "targetSslProxiesSetSslCertificatesRequestResource",
    deprecated: false

  field :target_ssl_proxy, 338_795_853,
    type: :string,
    json_name: "targetSslProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetSslPolicyTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :ssl_policy_reference_resource, 235_403_836,
    type: Google.Cloud.Compute.V1.SslPolicyReference,
    json_name: "sslPolicyReferenceResource",
    deprecated: false

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetSslPolicyTargetSslProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :ssl_policy_reference_resource, 235_403_836,
    type: Google.Cloud.Compute.V1.SslPolicyReference,
    json_name: "sslPolicyReferenceResource",
    deprecated: false

  field :target_ssl_proxy, 338_795_853,
    type: :string,
    json_name: "targetSslProxy",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetTagsInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :tags_resource, 331_435_380,
    type: Google.Cloud.Compute.V1.Tags,
    json_name: "tagsResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetTargetForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rule, 269_964_030,
    type: :string,
    json_name: "forwardingRule",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_reference_resource, 523_721_712,
    type: Google.Cloud.Compute.V1.TargetReference,
    json_name: "targetReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetTargetGlobalForwardingRuleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forwarding_rule, 269_964_030,
    type: :string,
    json_name: "forwardingRule",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_reference_resource, 523_721_712,
    type: Google.Cloud.Compute.V1.TargetReference,
    json_name: "targetReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetTargetPoolsInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_managers_set_target_pools_request_resource, 281_150_216,
    type: Google.Cloud.Compute.V1.InstanceGroupManagersSetTargetPoolsRequest,
    json_name: "instanceGroupManagersSetTargetPoolsRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetTargetPoolsRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_group_managers_set_target_pools_request_resource, 78_734_717,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupManagersSetTargetPoolsRequest,
    json_name: "regionInstanceGroupManagersSetTargetPoolsRequestResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.SetUrlMapRegionTargetHttpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_http_proxy, 206_872_421,
    type: :string,
    json_name: "targetHttpProxy",
    deprecated: false

  field :url_map_reference_resource, 398_701_333,
    type: Google.Cloud.Compute.V1.UrlMapReference,
    json_name: "urlMapReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetUrlMapRegionTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false

  field :url_map_reference_resource, 398_701_333,
    type: Google.Cloud.Compute.V1.UrlMapReference,
    json_name: "urlMapReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetUrlMapTargetHttpProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_http_proxy, 206_872_421,
    type: :string,
    json_name: "targetHttpProxy",
    deprecated: false

  field :url_map_reference_resource, 398_701_333,
    type: Google.Cloud.Compute.V1.UrlMapReference,
    json_name: "urlMapReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetUrlMapTargetHttpsProxyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :target_https_proxy, 52_336_748,
    type: :string,
    json_name: "targetHttpsProxy",
    deprecated: false

  field :url_map_reference_resource, 398_701_333,
    type: Google.Cloud.Compute.V1.UrlMapReference,
    json_name: "urlMapReferenceResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.SetUsageExportBucketProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :usage_export_location_resource, 20_260_459,
    type: Google.Cloud.Compute.V1.UsageExportLocation,
    json_name: "usageExportLocationResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.ShareSettings.ProjectMapEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.ShareSettingsProjectConfig
end

defmodule Google.Cloud.Compute.V1.ShareSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_map, 134_212_406,
    repeated: true,
    type: Google.Cloud.Compute.V1.ShareSettings.ProjectMapEntry,
    json_name: "projectMap",
    map: true

  field :share_type, 359_533_466, proto3_optional: true, type: :string, json_name: "shareType"
end

defmodule Google.Cloud.Compute.V1.ShareSettingsProjectConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 177_513_473, proto3_optional: true, type: :string, json_name: "projectId"
end

defmodule Google.Cloud.Compute.V1.ShieldedInstanceConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_integrity_monitoring, 409_071_030,
    proto3_optional: true,
    type: :bool,
    json_name: "enableIntegrityMonitoring"

  field :enable_secure_boot, 123_568_638,
    proto3_optional: true,
    type: :bool,
    json_name: "enableSecureBoot"

  field :enable_vtpm, 181_858_935, proto3_optional: true, type: :bool, json_name: "enableVtpm"
end

defmodule Google.Cloud.Compute.V1.ShieldedInstanceIdentity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :encryption_key, 488_268_707,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ShieldedInstanceIdentityEntry,
    json_name: "encryptionKey"

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :signing_key, 320_948_261,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.ShieldedInstanceIdentityEntry,
    json_name: "signingKey"
end

defmodule Google.Cloud.Compute.V1.ShieldedInstanceIdentityEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ek_cert, 450_178_589, proto3_optional: true, type: :string, json_name: "ekCert"
  field :ek_pub, 308_947_940, proto3_optional: true, type: :string, json_name: "ekPub"
end

defmodule Google.Cloud.Compute.V1.ShieldedInstanceIntegrityPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :update_auto_learn_policy, 245_490_215,
    proto3_optional: true,
    type: :bool,
    json_name: "updateAutoLearnPolicy"
end

defmodule Google.Cloud.Compute.V1.SignedUrlKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key_name, 500_938_859, proto3_optional: true, type: :string, json_name: "keyName"
  field :key_value, 504_106_897, proto3_optional: true, type: :string, json_name: "keyValue"
end

defmodule Google.Cloud.Compute.V1.SimulateMaintenanceEventInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.Snapshot.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.Snapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :architecture, 302_803_283, proto3_optional: true, type: :string
  field :auto_created, 463_922_264, proto3_optional: true, type: :bool, json_name: "autoCreated"
  field :chain_name, 68_644_169, proto3_optional: true, type: :string, json_name: "chainName"

  field :creation_size_bytes, 125_400_077,
    proto3_optional: true,
    type: :int64,
    json_name: "creationSizeBytes"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :disk_size_gb, 316_263_735, proto3_optional: true, type: :int64, json_name: "diskSizeGb"

  field :download_bytes, 435_054_068,
    proto3_optional: true,
    type: :int64,
    json_name: "downloadBytes"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :label_fingerprint, 178_124_825,
    proto3_optional: true,
    type: :string,
    json_name: "labelFingerprint"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.Snapshot.LabelsEntry,
    map: true

  field :license_codes, 45_482_664, repeated: true, type: :int64, json_name: "licenseCodes"
  field :licenses, 337_642_578, repeated: true, type: :string

  field :location_hint, 350_519_505,
    proto3_optional: true,
    type: :string,
    json_name: "locationHint"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :satisfies_pzs, 480_964_267, proto3_optional: true, type: :bool, json_name: "satisfiesPzs"
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :snapshot_encryption_key, 43_334_526,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "snapshotEncryptionKey"

  field :snapshot_type, 124_349_653,
    proto3_optional: true,
    type: :string,
    json_name: "snapshotType"

  field :source_disk, 451_753_793, proto3_optional: true, type: :string, json_name: "sourceDisk"

  field :source_disk_encryption_key, 531_501_153,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "sourceDiskEncryptionKey"

  field :source_disk_id, 454_190_809,
    proto3_optional: true,
    type: :string,
    json_name: "sourceDiskId"

  field :source_snapshot_schedule_policy, 235_756_291,
    proto3_optional: true,
    type: :string,
    json_name: "sourceSnapshotSchedulePolicy"

  field :source_snapshot_schedule_policy_id, 70_489_047,
    proto3_optional: true,
    type: :string,
    json_name: "sourceSnapshotSchedulePolicyId"

  field :status, 181_260_274, proto3_optional: true, type: :string

  field :storage_bytes, 424_631_719,
    proto3_optional: true,
    type: :int64,
    json_name: "storageBytes"

  field :storage_bytes_status, 490_739_082,
    proto3_optional: true,
    type: :string,
    json_name: "storageBytesStatus"

  field :storage_locations, 328_005_274,
    repeated: true,
    type: :string,
    json_name: "storageLocations"
end

defmodule Google.Cloud.Compute.V1.SnapshotList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Snapshot
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SourceDiskEncryptionKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_encryption_key, 271_660_677,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.CustomerEncryptionKey,
    json_name: "diskEncryptionKey"

  field :source_disk, 451_753_793, proto3_optional: true, type: :string, json_name: "sourceDisk"
end

defmodule Google.Cloud.Compute.V1.SourceInstanceParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disk_configs, 235_580_623,
    repeated: true,
    type: Google.Cloud.Compute.V1.DiskInstantiationConfig,
    json_name: "diskConfigs"
end

defmodule Google.Cloud.Compute.V1.SourceInstanceProperties.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.SourceInstanceProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :can_ip_forward, 467_731_324,
    proto3_optional: true,
    type: :bool,
    json_name: "canIpForward"

  field :deletion_protection, 458_014_698,
    proto3_optional: true,
    type: :bool,
    json_name: "deletionProtection"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :disks, 95_594_102, repeated: true, type: Google.Cloud.Compute.V1.SavedAttachedDisk

  field :guest_accelerators, 463_595_119,
    repeated: true,
    type: Google.Cloud.Compute.V1.AcceleratorConfig,
    json_name: "guestAccelerators"

  field :key_revocation_action_type, 235_941_474,
    proto3_optional: true,
    type: :string,
    json_name: "keyRevocationActionType"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.SourceInstanceProperties.LabelsEntry,
    map: true

  field :machine_type, 227_711_026, proto3_optional: true, type: :string, json_name: "machineType"
  field :metadata, 86_866_735, proto3_optional: true, type: Google.Cloud.Compute.V1.Metadata

  field :min_cpu_platform, 242_912_759,
    proto3_optional: true,
    type: :string,
    json_name: "minCpuPlatform"

  field :network_interfaces, 52_735_243,
    repeated: true,
    type: Google.Cloud.Compute.V1.NetworkInterface,
    json_name: "networkInterfaces"

  field :scheduling, 386_688_404, proto3_optional: true, type: Google.Cloud.Compute.V1.Scheduling

  field :service_accounts, 277_537_328,
    repeated: true,
    type: Google.Cloud.Compute.V1.ServiceAccount,
    json_name: "serviceAccounts"

  field :tags, 3_552_281, proto3_optional: true, type: Google.Cloud.Compute.V1.Tags
end

defmodule Google.Cloud.Compute.V1.SslCertificate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificate, 341_787_031, proto3_optional: true, type: :string

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :expire_time, 440_691_181, proto3_optional: true, type: :string, json_name: "expireTime"
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :managed, 298_389_407,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SslCertificateManagedSslCertificate

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :private_key, 361_331_107, proto3_optional: true, type: :string, json_name: "privateKey"
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :self_managed, 329_284_012,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SslCertificateSelfManagedSslCertificate,
    json_name: "selfManaged"

  field :subject_alternative_names, 528_807_907,
    repeated: true,
    type: :string,
    json_name: "subjectAlternativeNames"

  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.SslCertificateAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.SslCertificatesScopedList
end

defmodule Google.Cloud.Compute.V1.SslCertificateAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.SslCertificateAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SslCertificateList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.SslCertificate
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SslCertificateManagedSslCertificate.DomainStatusEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.SslCertificateManagedSslCertificate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :domain_status, 360_305_613,
    repeated: true,
    type: Google.Cloud.Compute.V1.SslCertificateManagedSslCertificate.DomainStatusEntry,
    json_name: "domainStatus",
    map: true

  field :domains, 226_935_855, repeated: true, type: :string
  field :status, 181_260_274, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.SslCertificateSelfManagedSslCertificate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificate, 341_787_031, proto3_optional: true, type: :string
  field :private_key, 361_331_107, proto3_optional: true, type: :string, json_name: "privateKey"
end

defmodule Google.Cloud.Compute.V1.SslCertificatesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ssl_certificates, 366_006_543,
    repeated: true,
    type: Google.Cloud.Compute.V1.SslCertificate,
    json_name: "sslCertificates"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SslPoliciesList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.SslPolicy
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SslPoliciesListAvailableFeaturesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :features, 246_211_645, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.SslPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :custom_features, 34_789_707, repeated: true, type: :string, json_name: "customFeatures"
  field :description, 422_937_596, proto3_optional: true, type: :string

  field :enabled_features, 469_017_467,
    repeated: true,
    type: :string,
    json_name: "enabledFeatures"

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :min_tls_version, 8_155_943,
    proto3_optional: true,
    type: :string,
    json_name: "minTlsVersion"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :profile, 227_445_161, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warnings, 498_091_095, repeated: true, type: Google.Cloud.Compute.V1.Warnings
end

defmodule Google.Cloud.Compute.V1.SslPolicyReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ssl_policy, 295_190_213, proto3_optional: true, type: :string, json_name: "sslPolicy"
end

defmodule Google.Cloud.Compute.V1.StartInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.StartWithEncryptionKeyInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :instances_start_with_encryption_key_request_resource, 441_712_511,
    type: Google.Cloud.Compute.V1.InstancesStartWithEncryptionKeyRequest,
    json_name: "instancesStartWithEncryptionKeyRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.StatefulPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :preserved_state, 2_634_026,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.StatefulPolicyPreservedState,
    json_name: "preservedState"
end

defmodule Google.Cloud.Compute.V1.StatefulPolicyPreservedState.DisksEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.StatefulPolicyPreservedStateDiskDevice
end

defmodule Google.Cloud.Compute.V1.StatefulPolicyPreservedState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disks, 95_594_102,
    repeated: true,
    type: Google.Cloud.Compute.V1.StatefulPolicyPreservedState.DisksEntry,
    map: true
end

defmodule Google.Cloud.Compute.V1.StatefulPolicyPreservedStateDiskDevice do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_delete, 464_761_403, proto3_optional: true, type: :string, json_name: "autoDelete"
end

defmodule Google.Cloud.Compute.V1.StopInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.Subnetwork do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :enable_flow_logs, 151_544_420,
    proto3_optional: true,
    type: :bool,
    json_name: "enableFlowLogs"

  field :external_ipv6_prefix, 139_299_190,
    proto3_optional: true,
    type: :string,
    json_name: "externalIpv6Prefix"

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string

  field :gateway_address, 459_867_385,
    proto3_optional: true,
    type: :string,
    json_name: "gatewayAddress"

  field :id, 3355, proto3_optional: true, type: :uint64

  field :internal_ipv6_prefix, 506_270_056,
    proto3_optional: true,
    type: :string,
    json_name: "internalIpv6Prefix"

  field :ip_cidr_range, 98_117_322, proto3_optional: true, type: :string, json_name: "ipCidrRange"

  field :ipv6_access_type, 504_658_653,
    proto3_optional: true,
    type: :string,
    json_name: "ipv6AccessType"

  field :ipv6_cidr_range, 273_141_258,
    proto3_optional: true,
    type: :string,
    json_name: "ipv6CidrRange"

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :log_config, 351_299_741,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.SubnetworkLogConfig,
    json_name: "logConfig"

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string

  field :private_ip_google_access, 421_491_790,
    proto3_optional: true,
    type: :bool,
    json_name: "privateIpGoogleAccess"

  field :private_ipv6_google_access, 48_277_006,
    proto3_optional: true,
    type: :string,
    json_name: "privateIpv6GoogleAccess"

  field :purpose, 316_407_070, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :role, 3_506_294, proto3_optional: true, type: :string

  field :secondary_ip_ranges, 136_658_915,
    repeated: true,
    type: Google.Cloud.Compute.V1.SubnetworkSecondaryRange,
    json_name: "secondaryIpRanges"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :stack_type, 425_908_881, proto3_optional: true, type: :string, json_name: "stackType"
  field :state, 109_757_585, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.SubnetworkAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.SubnetworksScopedList
end

defmodule Google.Cloud.Compute.V1.SubnetworkAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.SubnetworkAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SubnetworkList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Subnetwork
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SubnetworkLogConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :aggregation_interval, 174_919_042,
    proto3_optional: true,
    type: :string,
    json_name: "aggregationInterval"

  field :enable, 311_764_355, proto3_optional: true, type: :bool
  field :filter_expr, 183_374_428, proto3_optional: true, type: :string, json_name: "filterExpr"

  field :flow_sampling, 530_150_360,
    proto3_optional: true,
    type: :float,
    json_name: "flowSampling"

  field :metadata, 86_866_735, proto3_optional: true, type: :string
  field :metadata_fields, 378_461_641, repeated: true, type: :string, json_name: "metadataFields"
end

defmodule Google.Cloud.Compute.V1.SubnetworkSecondaryRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_cidr_range, 98_117_322, proto3_optional: true, type: :string, json_name: "ipCidrRange"
  field :range_name, 332_216_397, proto3_optional: true, type: :string, json_name: "rangeName"
end

defmodule Google.Cloud.Compute.V1.SubnetworksExpandIpCidrRangeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_cidr_range, 98_117_322, proto3_optional: true, type: :string, json_name: "ipCidrRange"
end

defmodule Google.Cloud.Compute.V1.SubnetworksScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :subnetworks, 415_853_125, repeated: true, type: Google.Cloud.Compute.V1.Subnetwork
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.SubnetworksSetPrivateIpGoogleAccessRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :private_ip_google_access, 421_491_790,
    proto3_optional: true,
    type: :bool,
    json_name: "privateIpGoogleAccess"
end

defmodule Google.Cloud.Compute.V1.Subsetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :policy, 91_071_794, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.SuspendInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.SwitchToCustomModeNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network, 232_872_494, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.TCPHealthCheck do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port, 3_446_913, proto3_optional: true, type: :int32
  field :port_name, 41_534_345, proto3_optional: true, type: :string, json_name: "portName"

  field :port_specification, 51_590_597,
    proto3_optional: true,
    type: :string,
    json_name: "portSpecification"

  field :proxy_header, 160_374_142, proto3_optional: true, type: :string, json_name: "proxyHeader"
  field :request, 21_951_119, proto3_optional: true, type: :string
  field :response, 196_547_649, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.Tags do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.TargetGrpcProxy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :self_link_with_id, 44_520_962,
    proto3_optional: true,
    type: :string,
    json_name: "selfLinkWithId"

  field :url_map, 367_020_684, proto3_optional: true, type: :string, json_name: "urlMap"

  field :validate_for_proxyless, 101_822_888,
    proto3_optional: true,
    type: :bool,
    json_name: "validateForProxyless"
end

defmodule Google.Cloud.Compute.V1.TargetGrpcProxyList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.TargetGrpcProxy
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetHttpProxiesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_http_proxies, 162_147_011,
    repeated: true,
    type: Google.Cloud.Compute.V1.TargetHttpProxy,
    json_name: "targetHttpProxies"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetHttpProxy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :proxy_bind, 286_025_582, proto3_optional: true, type: :bool, json_name: "proxyBind"
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :url_map, 367_020_684, proto3_optional: true, type: :string, json_name: "urlMap"
end

defmodule Google.Cloud.Compute.V1.TargetHttpProxyAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.TargetHttpProxiesScopedList
end

defmodule Google.Cloud.Compute.V1.TargetHttpProxyAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.TargetHttpProxyAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.TargetHttpProxyList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.TargetHttpProxy
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxiesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_https_proxies, 366_607_882,
    repeated: true,
    type: Google.Cloud.Compute.V1.TargetHttpsProxy,
    json_name: "targetHttpsProxies"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxiesSetCertificateMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificate_map, 156_463_796,
    proto3_optional: true,
    type: :string,
    json_name: "certificateMap"
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxiesSetQuicOverrideRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :quic_override, 456_577_197,
    proto3_optional: true,
    type: :string,
    json_name: "quicOverride"
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxiesSetSslCertificatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ssl_certificates, 366_006_543,
    repeated: true,
    type: :string,
    json_name: "sslCertificates"
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authorization_policy, 33_945_528,
    proto3_optional: true,
    type: :string,
    json_name: "authorizationPolicy"

  field :certificate_map, 156_463_796,
    proto3_optional: true,
    type: :string,
    json_name: "certificateMap"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :proxy_bind, 286_025_582, proto3_optional: true, type: :bool, json_name: "proxyBind"

  field :quic_override, 456_577_197,
    proto3_optional: true,
    type: :string,
    json_name: "quicOverride"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :server_tls_policy, 295_825_266,
    proto3_optional: true,
    type: :string,
    json_name: "serverTlsPolicy"

  field :ssl_certificates, 366_006_543,
    repeated: true,
    type: :string,
    json_name: "sslCertificates"

  field :ssl_policy, 295_190_213, proto3_optional: true, type: :string, json_name: "sslPolicy"
  field :url_map, 367_020_684, proto3_optional: true, type: :string, json_name: "urlMap"
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxyAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.TargetHttpsProxiesScopedList
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxyAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.TargetHttpsProxyAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxyList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.TargetHttpsProxy
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetInstance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :instance, 18_257_045, proto3_optional: true, type: :string
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :nat_policy, 509_780_496, proto3_optional: true, type: :string, json_name: "natPolicy"
  field :network, 232_872_494, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.TargetInstanceAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.TargetInstancesScopedList
end

defmodule Google.Cloud.Compute.V1.TargetInstanceAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.TargetInstanceAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetInstanceList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.TargetInstance
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetInstancesScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_instances, 392_915_280,
    repeated: true,
    type: Google.Cloud.Compute.V1.TargetInstance,
    json_name: "targetInstances"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetPool do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backup_pool, 45_884_537, proto3_optional: true, type: :string, json_name: "backupPool"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :failover_ratio, 212_667_006,
    proto3_optional: true,
    type: :float,
    json_name: "failoverRatio"

  field :health_checks, 448_370_606, repeated: true, type: :string, json_name: "healthChecks"
  field :id, 3355, proto3_optional: true, type: :uint64
  field :instances, 29_097_598, repeated: true, type: :string
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :session_affinity, 463_888_561,
    proto3_optional: true,
    type: :string,
    json_name: "sessionAffinity"
end

defmodule Google.Cloud.Compute.V1.TargetPoolAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.TargetPoolsScopedList
end

defmodule Google.Cloud.Compute.V1.TargetPoolAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.TargetPoolAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetPoolInstanceHealth do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_status, 380_545_845,
    repeated: true,
    type: Google.Cloud.Compute.V1.HealthStatus,
    json_name: "healthStatus"

  field :kind, 3_292_052, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.TargetPoolList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.TargetPool
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetPoolsAddHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_checks, 448_370_606,
    repeated: true,
    type: Google.Cloud.Compute.V1.HealthCheckReference,
    json_name: "healthChecks"
end

defmodule Google.Cloud.Compute.V1.TargetPoolsAddInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: Google.Cloud.Compute.V1.InstanceReference
end

defmodule Google.Cloud.Compute.V1.TargetPoolsRemoveHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_checks, 448_370_606,
    repeated: true,
    type: Google.Cloud.Compute.V1.HealthCheckReference,
    json_name: "healthChecks"
end

defmodule Google.Cloud.Compute.V1.TargetPoolsRemoveInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 29_097_598, repeated: true, type: Google.Cloud.Compute.V1.InstanceReference
end

defmodule Google.Cloud.Compute.V1.TargetPoolsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_pools, 336_072_617,
    repeated: true,
    type: Google.Cloud.Compute.V1.TargetPool,
    json_name: "targetPools"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target, 192_835_985, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.TargetSslProxiesSetBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service, 373_540_533, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.TargetSslProxiesSetCertificateMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificate_map, 156_463_796,
    proto3_optional: true,
    type: :string,
    json_name: "certificateMap"
end

defmodule Google.Cloud.Compute.V1.TargetSslProxiesSetProxyHeaderRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :proxy_header, 160_374_142, proto3_optional: true, type: :string, json_name: "proxyHeader"
end

defmodule Google.Cloud.Compute.V1.TargetSslProxiesSetSslCertificatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ssl_certificates, 366_006_543,
    repeated: true,
    type: :string,
    json_name: "sslCertificates"
end

defmodule Google.Cloud.Compute.V1.TargetSslProxy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificate_map, 156_463_796,
    proto3_optional: true,
    type: :string,
    json_name: "certificateMap"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :proxy_header, 160_374_142, proto3_optional: true, type: :string, json_name: "proxyHeader"
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :service, 373_540_533, proto3_optional: true, type: :string

  field :ssl_certificates, 366_006_543,
    repeated: true,
    type: :string,
    json_name: "sslCertificates"

  field :ssl_policy, 295_190_213, proto3_optional: true, type: :string, json_name: "sslPolicy"
end

defmodule Google.Cloud.Compute.V1.TargetSslProxyList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.TargetSslProxy
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetTcpProxiesSetBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service, 373_540_533, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.TargetTcpProxiesSetProxyHeaderRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :proxy_header, 160_374_142, proto3_optional: true, type: :string, json_name: "proxyHeader"
end

defmodule Google.Cloud.Compute.V1.TargetTcpProxy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :proxy_bind, 286_025_582, proto3_optional: true, type: :bool, json_name: "proxyBind"
  field :proxy_header, 160_374_142, proto3_optional: true, type: :string, json_name: "proxyHeader"
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :service, 373_540_533, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.TargetTcpProxyList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.TargetTcpProxy
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetVpnGateway do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :forwarding_rules, 315_821_365,
    repeated: true,
    type: :string,
    json_name: "forwardingRules"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :status, 181_260_274, proto3_optional: true, type: :string
  field :tunnels, 104_561_931, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.TargetVpnGatewayAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.TargetVpnGatewaysScopedList
end

defmodule Google.Cloud.Compute.V1.TargetVpnGatewayAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.TargetVpnGatewayAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetVpnGatewayList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.TargetVpnGateway
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TargetVpnGatewaysScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_vpn_gateways, 401_770_888,
    repeated: true,
    type: Google.Cloud.Compute.V1.TargetVpnGateway,
    json_name: "targetVpnGateways"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.TestFailure do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :actual_output_url, 287_075_458,
    proto3_optional: true,
    type: :string,
    json_name: "actualOutputUrl"

  field :actual_redirect_response_code, 42_926_553,
    proto3_optional: true,
    type: :int32,
    json_name: "actualRedirectResponseCode"

  field :actual_service, 440_379_652,
    proto3_optional: true,
    type: :string,
    json_name: "actualService"

  field :expected_output_url, 433_967_384,
    proto3_optional: true,
    type: :string,
    json_name: "expectedOutputUrl"

  field :expected_redirect_response_code, 18_888_047,
    proto3_optional: true,
    type: :int32,
    json_name: "expectedRedirectResponseCode"

  field :expected_service, 133_987_374,
    proto3_optional: true,
    type: :string,
    json_name: "expectedService"

  field :headers, 258_436_998, repeated: true, type: Google.Cloud.Compute.V1.UrlMapTestHeader
  field :host, 3_208_616, proto3_optional: true, type: :string
  field :path, 3_433_509, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsExternalVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsInstanceTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsLicenseCodeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsLicenseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsMachineImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsNetworkEndpointGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsNodeGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsNodeTemplateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsPacketMirroringRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsRegionDiskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsRegionNetworkFirewallPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsResourcePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsServiceAttachmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsSnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsSubnetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestIamPermissionsVpnGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :resource, 195_806_222, type: :string, deprecated: false

  field :test_permissions_request_resource, 439_214_758,
    type: Google.Cloud.Compute.V1.TestPermissionsRequest,
    json_name: "testPermissionsRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.TestPermissionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :permissions, 59_962_500, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.TestPermissionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :permissions, 59_962_500, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1.Uint128 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :high, 3_202_466, proto3_optional: true, type: :uint64
  field :low, 107_348, proto3_optional: true, type: :uint64
end

defmodule Google.Cloud.Compute.V1.UpdateAccessConfigInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :access_config_resource, 387_825_552,
    type: Google.Cloud.Compute.V1.AccessConfig,
    json_name: "accessConfigResource",
    deprecated: false

  field :instance, 18_257_045, type: :string, deprecated: false

  field :network_interface, 365_387_880,
    type: :string,
    json_name: "networkInterface",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.UpdateAutoscalerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler, 517_258_967, proto3_optional: true, type: :string

  field :autoscaler_resource, 207_616_118,
    type: Google.Cloud.Compute.V1.Autoscaler,
    json_name: "autoscalerResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.UpdateBackendBucketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_bucket, 91_714_037, type: :string, json_name: "backendBucket", deprecated: false

  field :backend_bucket_resource, 380_757_784,
    type: Google.Cloud.Compute.V1.BackendBucket,
    json_name: "backendBucketResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.UpdateBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :backend_service_resource, 347_586_723,
    type: Google.Cloud.Compute.V1.BackendService,
    json_name: "backendServiceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.UpdateDisplayDeviceInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :display_device_resource, 289_686_106,
    type: Google.Cloud.Compute.V1.DisplayDevice,
    json_name: "displayDeviceResource",
    deprecated: false

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.UpdateFirewallRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firewall, 511_016_192, type: :string, deprecated: false

  field :firewall_resource, 41_425_005,
    type: Google.Cloud.Compute.V1.Firewall,
    json_name: "firewallResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.UpdateHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check, 308_876_645, type: :string, json_name: "healthCheck", deprecated: false

  field :health_check_resource, 201_925_032,
    type: Google.Cloud.Compute.V1.HealthCheck,
    json_name: "healthCheckResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.UpdateInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :instance_resource, 215_988_344,
    type: Google.Cloud.Compute.V1.Instance,
    json_name: "instanceResource",
    deprecated: false

  field :minimal_action, 270_567_060,
    proto3_optional: true,
    type: :string,
    json_name: "minimalAction"

  field :most_disruptive_allowed_action, 66_103_053,
    proto3_optional: true,
    type: :string,
    json_name: "mostDisruptiveAllowedAction"

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.UpdateNetworkInterfaceInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false

  field :network_interface, 365_387_880,
    type: :string,
    json_name: "networkInterface",
    deprecated: false

  field :network_interface_resource, 325_814_789,
    type: Google.Cloud.Compute.V1.NetworkInterface,
    json_name: "networkInterfaceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.UpdatePeeringNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network, 232_872_494, type: :string, deprecated: false

  field :networks_update_peering_request_resource, 224_433_497,
    type: Google.Cloud.Compute.V1.NetworksUpdatePeeringRequest,
    json_name: "networksUpdatePeeringRequestResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.UpdatePerInstanceConfigsInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :instance_group_managers_update_per_instance_configs_req_resource, 141_402_302,
    type: Google.Cloud.Compute.V1.InstanceGroupManagersUpdatePerInstanceConfigsReq,
    json_name: "instanceGroupManagersUpdatePerInstanceConfigsReqResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.UpdatePerInstanceConfigsRegionInstanceGroupManagerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_group_manager, 249_363_395,
    type: :string,
    json_name: "instanceGroupManager",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_instance_group_manager_update_instance_config_req_resource, 89_036_583,
    type: Google.Cloud.Compute.V1.RegionInstanceGroupManagerUpdateInstanceConfigReq,
    json_name: "regionInstanceGroupManagerUpdateInstanceConfigReqResource",
    deprecated: false

  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.UpdateRegionAutoscalerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler, 517_258_967, proto3_optional: true, type: :string

  field :autoscaler_resource, 207_616_118,
    type: Google.Cloud.Compute.V1.Autoscaler,
    json_name: "autoscalerResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.UpdateRegionBackendServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    type: :string,
    json_name: "backendService",
    deprecated: false

  field :backend_service_resource, 347_586_723,
    type: Google.Cloud.Compute.V1.BackendService,
    json_name: "backendServiceResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.UpdateRegionCommitmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :commitment, 482_134_805, type: :string, deprecated: false

  field :commitment_resource, 244_240_888,
    type: Google.Cloud.Compute.V1.Commitment,
    json_name: "commitmentResource",
    deprecated: false

  field :paths, 106_438_894, proto3_optional: true, type: :string
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :update_mask, 500_079_778, proto3_optional: true, type: :string, json_name: "updateMask"
end

defmodule Google.Cloud.Compute.V1.UpdateRegionHealthCheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :health_check, 308_876_645, type: :string, json_name: "healthCheck", deprecated: false

  field :health_check_resource, 201_925_032,
    type: Google.Cloud.Compute.V1.HealthCheck,
    json_name: "healthCheckResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1.UpdateRegionUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :url_map, 367_020_684, type: :string, json_name: "urlMap", deprecated: false

  field :url_map_resource, 168_675_425,
    type: Google.Cloud.Compute.V1.UrlMap,
    json_name: "urlMapResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.UpdateReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :paths, 106_438_894, proto3_optional: true, type: :string
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :reservation, 47_530_956, type: :string, deprecated: false

  field :reservation_resource, 285_030_177,
    type: Google.Cloud.Compute.V1.Reservation,
    json_name: "reservationResource",
    deprecated: false

  field :update_mask, 500_079_778, proto3_optional: true, type: :string, json_name: "updateMask"
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.UpdateRouterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :router, 148_608_841, type: :string, deprecated: false

  field :router_resource, 155_222_084,
    type: Google.Cloud.Compute.V1.Router,
    json_name: "routerResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.UpdateShieldedInstanceConfigInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 18_257_045, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"

  field :shielded_instance_config_resource, 272_059_224,
    type: Google.Cloud.Compute.V1.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfigResource",
    deprecated: false

  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.UpdateUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
  field :url_map, 367_020_684, type: :string, json_name: "urlMap", deprecated: false

  field :url_map_resource, 168_675_425,
    type: Google.Cloud.Compute.V1.UrlMap,
    json_name: "urlMapResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.UrlMap do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :default_route_action, 378_919_466,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpRouteAction,
    json_name: "defaultRouteAction"

  field :default_service, 370_242_231,
    proto3_optional: true,
    type: :string,
    json_name: "defaultService"

  field :default_url_redirect, 359_503_338,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpRedirectAction,
    json_name: "defaultUrlRedirect"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :fingerprint, 234_678_500, proto3_optional: true, type: :string

  field :header_action, 328_077_352,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpHeaderAction,
    json_name: "headerAction"

  field :host_rules, 311_804_832,
    repeated: true,
    type: Google.Cloud.Compute.V1.HostRule,
    json_name: "hostRules"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string

  field :path_matchers, 271_664_219,
    repeated: true,
    type: Google.Cloud.Compute.V1.PathMatcher,
    json_name: "pathMatchers"

  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :tests, 110_251_553, repeated: true, type: Google.Cloud.Compute.V1.UrlMapTest
end

defmodule Google.Cloud.Compute.V1.UrlMapList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.UrlMap
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.UrlMapReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :url_map, 367_020_684, proto3_optional: true, type: :string, json_name: "urlMap"
end

defmodule Google.Cloud.Compute.V1.UrlMapTest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :expected_output_url, 433_967_384,
    proto3_optional: true,
    type: :string,
    json_name: "expectedOutputUrl"

  field :expected_redirect_response_code, 18_888_047,
    proto3_optional: true,
    type: :int32,
    json_name: "expectedRedirectResponseCode"

  field :headers, 258_436_998, repeated: true, type: Google.Cloud.Compute.V1.UrlMapTestHeader
  field :host, 3_208_616, proto3_optional: true, type: :string
  field :path, 3_433_509, proto3_optional: true, type: :string
  field :service, 373_540_533, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.UrlMapTestHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :value, 111_972_721, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.UrlMapValidationResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :load_errors, 310_147_300, repeated: true, type: :string, json_name: "loadErrors"

  field :load_succeeded, 128_326_216,
    proto3_optional: true,
    type: :bool,
    json_name: "loadSucceeded"

  field :test_failures, 505_934_134,
    repeated: true,
    type: Google.Cloud.Compute.V1.TestFailure,
    json_name: "testFailures"

  field :test_passed, 192_708_797, proto3_optional: true, type: :bool, json_name: "testPassed"
end

defmodule Google.Cloud.Compute.V1.UrlMapsAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.UrlMapsScopedList
end

defmodule Google.Cloud.Compute.V1.UrlMapsAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.UrlMapsAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.UrlMapsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :url_maps, 103_352_167,
    repeated: true,
    type: Google.Cloud.Compute.V1.UrlMap,
    json_name: "urlMaps"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.UrlMapsValidateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :load_balancing_schemes, 6_308_527,
    repeated: true,
    type: :string,
    json_name: "loadBalancingSchemes"

  field :resource, 195_806_222, proto3_optional: true, type: Google.Cloud.Compute.V1.UrlMap
end

defmodule Google.Cloud.Compute.V1.UrlMapsValidateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 139_315_229,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.UrlMapValidationResult
end

defmodule Google.Cloud.Compute.V1.UrlRewrite do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :host_rewrite, 159_819_253, proto3_optional: true, type: :string, json_name: "hostRewrite"

  field :path_prefix_rewrite, 41_186_361,
    proto3_optional: true,
    type: :string,
    json_name: "pathPrefixRewrite"
end

defmodule Google.Cloud.Compute.V1.UsableSubnetwork do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :external_ipv6_prefix, 139_299_190,
    proto3_optional: true,
    type: :string,
    json_name: "externalIpv6Prefix"

  field :internal_ipv6_prefix, 506_270_056,
    proto3_optional: true,
    type: :string,
    json_name: "internalIpv6Prefix"

  field :ip_cidr_range, 98_117_322, proto3_optional: true, type: :string, json_name: "ipCidrRange"

  field :ipv6_access_type, 504_658_653,
    proto3_optional: true,
    type: :string,
    json_name: "ipv6AccessType"

  field :network, 232_872_494, proto3_optional: true, type: :string
  field :purpose, 316_407_070, proto3_optional: true, type: :string
  field :role, 3_506_294, proto3_optional: true, type: :string

  field :secondary_ip_ranges, 136_658_915,
    repeated: true,
    type: Google.Cloud.Compute.V1.UsableSubnetworkSecondaryRange,
    json_name: "secondaryIpRanges"

  field :stack_type, 425_908_881, proto3_optional: true, type: :string, json_name: "stackType"
  field :subnetwork, 307_827_694, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.UsableSubnetworkSecondaryRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_cidr_range, 98_117_322, proto3_optional: true, type: :string, json_name: "ipCidrRange"
  field :range_name, 332_216_397, proto3_optional: true, type: :string, json_name: "rangeName"
end

defmodule Google.Cloud.Compute.V1.UsableSubnetworksAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.UsableSubnetwork
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.UsageExportLocation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bucket_name, 283_610_048, proto3_optional: true, type: :string, json_name: "bucketName"

  field :report_name_prefix, 320_198_715,
    proto3_optional: true,
    type: :string,
    json_name: "reportNamePrefix"
end

defmodule Google.Cloud.Compute.V1.ValidateRegionUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false

  field :region_url_maps_validate_request_resource, 56_632_858,
    type: Google.Cloud.Compute.V1.RegionUrlMapsValidateRequest,
    json_name: "regionUrlMapsValidateRequestResource",
    deprecated: false

  field :url_map, 367_020_684, type: :string, json_name: "urlMap", deprecated: false
end

defmodule Google.Cloud.Compute.V1.ValidateUrlMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 227_560_217, type: :string, deprecated: false
  field :url_map, 367_020_684, type: :string, json_name: "urlMap", deprecated: false

  field :url_maps_validate_request_resource, 395_913_455,
    type: Google.Cloud.Compute.V1.UrlMapsValidateRequest,
    json_name: "urlMapsValidateRequestResource",
    deprecated: false
end

defmodule Google.Cloud.Compute.V1.VmEndpointNatMappings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_name, 227_947_509,
    proto3_optional: true,
    type: :string,
    json_name: "instanceName"

  field :interface_nat_mappings, 256_196_617,
    repeated: true,
    type: Google.Cloud.Compute.V1.VmEndpointNatMappingsInterfaceNatMappings,
    json_name: "interfaceNatMappings"
end

defmodule Google.Cloud.Compute.V1.VmEndpointNatMappingsInterfaceNatMappings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :drain_nat_ip_port_ranges, 395_440_577,
    repeated: true,
    type: :string,
    json_name: "drainNatIpPortRanges"

  field :nat_ip_port_ranges, 531_830_810,
    repeated: true,
    type: :string,
    json_name: "natIpPortRanges"

  field :num_total_drain_nat_ports, 335_532_793,
    proto3_optional: true,
    type: :int32,
    json_name: "numTotalDrainNatPorts"

  field :num_total_nat_ports, 299_904_384,
    proto3_optional: true,
    type: :int32,
    json_name: "numTotalNatPorts"

  field :rule_mappings, 486_192_968,
    repeated: true,
    type: Google.Cloud.Compute.V1.VmEndpointNatMappingsInterfaceNatMappingsNatRuleMappings,
    json_name: "ruleMappings"

  field :source_alias_ip_range, 440_340_952,
    proto3_optional: true,
    type: :string,
    json_name: "sourceAliasIpRange"

  field :source_virtual_ip, 149_836_159,
    proto3_optional: true,
    type: :string,
    json_name: "sourceVirtualIp"
end

defmodule Google.Cloud.Compute.V1.VmEndpointNatMappingsInterfaceNatMappingsNatRuleMappings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :drain_nat_ip_port_ranges, 395_440_577,
    repeated: true,
    type: :string,
    json_name: "drainNatIpPortRanges"

  field :nat_ip_port_ranges, 531_830_810,
    repeated: true,
    type: :string,
    json_name: "natIpPortRanges"

  field :num_total_drain_nat_ports, 335_532_793,
    proto3_optional: true,
    type: :int32,
    json_name: "numTotalDrainNatPorts"

  field :num_total_nat_ports, 299_904_384,
    proto3_optional: true,
    type: :int32,
    json_name: "numTotalNatPorts"

  field :rule_number, 535_211_500, proto3_optional: true, type: :int32, json_name: "ruleNumber"
end

defmodule Google.Cloud.Compute.V1.VmEndpointNatMappingsList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :result, 139_315_229, repeated: true, type: Google.Cloud.Compute.V1.VmEndpointNatMappings
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.VpnGateway.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.VpnGateway do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :label_fingerprint, 178_124_825,
    proto3_optional: true,
    type: :string,
    json_name: "labelFingerprint"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.VpnGateway.LabelsEntry,
    map: true

  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :stack_type, 425_908_881, proto3_optional: true, type: :string, json_name: "stackType"

  field :vpn_interfaces, 91_842_181,
    repeated: true,
    type: Google.Cloud.Compute.V1.VpnGatewayVpnGatewayInterface,
    json_name: "vpnInterfaces"
end

defmodule Google.Cloud.Compute.V1.VpnGatewayAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.VpnGatewaysScopedList
end

defmodule Google.Cloud.Compute.V1.VpnGatewayAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.VpnGatewayAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.VpnGatewayList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.VpnGateway
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.VpnGatewayStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vpn_connections, 439_334_538,
    repeated: true,
    type: Google.Cloud.Compute.V1.VpnGatewayStatusVpnConnection,
    json_name: "vpnConnections"
end

defmodule Google.Cloud.Compute.V1.VpnGatewayStatusHighAvailabilityRequirementState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 109_757_585, proto3_optional: true, type: :string

  field :unsatisfied_reason, 55_016_330,
    proto3_optional: true,
    type: :string,
    json_name: "unsatisfiedReason"
end

defmodule Google.Cloud.Compute.V1.VpnGatewayStatusTunnel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :local_gateway_interface, 158_764_330,
    proto3_optional: true,
    type: :uint32,
    json_name: "localGatewayInterface"

  field :peer_gateway_interface, 214_380_385,
    proto3_optional: true,
    type: :uint32,
    json_name: "peerGatewayInterface"

  field :tunnel_url, 78_975_256, proto3_optional: true, type: :string, json_name: "tunnelUrl"
end

defmodule Google.Cloud.Compute.V1.VpnGatewayStatusVpnConnection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :peer_external_gateway, 384_956_173,
    proto3_optional: true,
    type: :string,
    json_name: "peerExternalGateway"

  field :peer_gcp_gateway, 281_867_452,
    proto3_optional: true,
    type: :string,
    json_name: "peerGcpGateway"

  field :state, 109_757_585,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.VpnGatewayStatusHighAvailabilityRequirementState

  field :tunnels, 104_561_931,
    repeated: true,
    type: Google.Cloud.Compute.V1.VpnGatewayStatusTunnel
end

defmodule Google.Cloud.Compute.V1.VpnGatewayVpnGatewayInterface do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :uint32

  field :interconnect_attachment, 308_135_284,
    proto3_optional: true,
    type: :string,
    json_name: "interconnectAttachment"

  field :ip_address, 406_272_220, proto3_optional: true, type: :string, json_name: "ipAddress"
end

defmodule Google.Cloud.Compute.V1.VpnGatewaysGetStatusResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 139_315_229,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.VpnGatewayStatus
end

defmodule Google.Cloud.Compute.V1.VpnGatewaysScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vpn_gateways, 259_177_882,
    repeated: true,
    type: Google.Cloud.Compute.V1.VpnGateway,
    json_name: "vpnGateways"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.VpnTunnel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string

  field :detailed_status, 333_501_025,
    proto3_optional: true,
    type: :string,
    json_name: "detailedStatus"

  field :id, 3355, proto3_optional: true, type: :uint64
  field :ike_version, 218_376_220, proto3_optional: true, type: :int32, json_name: "ikeVersion"
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :local_traffic_selector, 317_314_613,
    repeated: true,
    type: :string,
    json_name: "localTrafficSelector"

  field :name, 3_373_707, proto3_optional: true, type: :string

  field :peer_external_gateway, 384_956_173,
    proto3_optional: true,
    type: :string,
    json_name: "peerExternalGateway"

  field :peer_external_gateway_interface, 452_768_391,
    proto3_optional: true,
    type: :int32,
    json_name: "peerExternalGatewayInterface"

  field :peer_gcp_gateway, 281_867_452,
    proto3_optional: true,
    type: :string,
    json_name: "peerGcpGateway"

  field :peer_ip, 383_249_700, proto3_optional: true, type: :string, json_name: "peerIp"
  field :region, 138_946_292, proto3_optional: true, type: :string

  field :remote_traffic_selector, 358_887_098,
    repeated: true,
    type: :string,
    json_name: "remoteTrafficSelector"

  field :router, 148_608_841, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"

  field :shared_secret, 381_932_490,
    proto3_optional: true,
    type: :string,
    json_name: "sharedSecret"

  field :shared_secret_hash, 398_881_891,
    proto3_optional: true,
    type: :string,
    json_name: "sharedSecretHash"

  field :status, 181_260_274, proto3_optional: true, type: :string

  field :target_vpn_gateway, 532_512_843,
    proto3_optional: true,
    type: :string,
    json_name: "targetVpnGateway"

  field :vpn_gateway, 406_684_153, proto3_optional: true, type: :string, json_name: "vpnGateway"

  field :vpn_gateway_interface, 95_979_123,
    proto3_optional: true,
    type: :int32,
    json_name: "vpnGatewayInterface"
end

defmodule Google.Cloud.Compute.V1.VpnTunnelAggregatedList.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1.VpnTunnelsScopedList
end

defmodule Google.Cloud.Compute.V1.VpnTunnelAggregatedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1.VpnTunnelAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :unreachables, 243_372_063, repeated: true, type: :string
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.VpnTunnelList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.VpnTunnel
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.VpnTunnelsScopedList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vpn_tunnels, 163_494_080,
    repeated: true,
    type: Google.Cloud.Compute.V1.VpnTunnel,
    json_name: "vpnTunnels"

  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.WafExpressionSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :aliases, 159_207_166, repeated: true, type: :string

  field :expressions, 175_554_779,
    repeated: true,
    type: Google.Cloud.Compute.V1.WafExpressionSetExpression

  field :id, 3355, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.WafExpressionSetExpression do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.WaitGlobalOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.WaitRegionOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.WaitZoneOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :zone, 3_744_684, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1.Warning do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 3_059_181, proto3_optional: true, type: :string
  field :data, 3_076_010, repeated: true, type: Google.Cloud.Compute.V1.Data
  field :message, 418_054_151, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.Warnings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 3_059_181, proto3_optional: true, type: :string
  field :data, 3_076_010, repeated: true, type: Google.Cloud.Compute.V1.Data
  field :message, 418_054_151, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.WeightedBackendService do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backend_service, 306_946_058,
    proto3_optional: true,
    type: :string,
    json_name: "backendService"

  field :header_action, 328_077_352,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.HttpHeaderAction,
    json_name: "headerAction"

  field :weight, 282_149_496, proto3_optional: true, type: :uint32
end

defmodule Google.Cloud.Compute.V1.XpnHostList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Project
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.XpnResourceId do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :type, 3_575_610, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1.Zone do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :available_cpu_platforms, 175_536_531,
    repeated: true,
    type: :string,
    json_name: "availableCpuPlatforms"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :deprecated, 515_138_995,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1.DeprecationStatus

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :status, 181_260_274, proto3_optional: true, type: :string
  field :supports_pzs, 83_983_214, proto3_optional: true, type: :bool, json_name: "supportsPzs"
end

defmodule Google.Cloud.Compute.V1.ZoneList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1.Zone
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1.Warning
end

defmodule Google.Cloud.Compute.V1.ZoneSetLabelsRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Compute.V1.ZoneSetLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :label_fingerprint, 178_124_825,
    proto3_optional: true,
    type: :string,
    json_name: "labelFingerprint"

  field :labels, 500_195_327,
    repeated: true,
    type: Google.Cloud.Compute.V1.ZoneSetLabelsRequest.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Compute.V1.ZoneSetPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bindings, 403_251_854, repeated: true, type: Google.Cloud.Compute.V1.Binding
  field :etag, 3_123_477, proto3_optional: true, type: :string
  field :policy, 91_071_794, proto3_optional: true, type: Google.Cloud.Compute.V1.Policy
end

defmodule Google.Cloud.Compute.V1.AcceleratorTypes.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.AcceleratorTypes",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListAcceleratorTypesRequest,
      Google.Cloud.Compute.V1.AcceleratorTypeAggregatedList

  rpc :Get,
      Google.Cloud.Compute.V1.GetAcceleratorTypeRequest,
      Google.Cloud.Compute.V1.AcceleratorType

  rpc :List,
      Google.Cloud.Compute.V1.ListAcceleratorTypesRequest,
      Google.Cloud.Compute.V1.AcceleratorTypeList
end

defmodule Google.Cloud.Compute.V1.AcceleratorTypes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.AcceleratorTypes.Service
end

defmodule Google.Cloud.Compute.V1.Addresses.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Addresses", protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListAddressesRequest,
      Google.Cloud.Compute.V1.AddressAggregatedList

  rpc :Delete, Google.Cloud.Compute.V1.DeleteAddressRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetAddressRequest, Google.Cloud.Compute.V1.Address

  rpc :Insert, Google.Cloud.Compute.V1.InsertAddressRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListAddressesRequest, Google.Cloud.Compute.V1.AddressList
end

defmodule Google.Cloud.Compute.V1.Addresses.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Addresses.Service
end

defmodule Google.Cloud.Compute.V1.Autoscalers.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.Autoscalers",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListAutoscalersRequest,
      Google.Cloud.Compute.V1.AutoscalerAggregatedList

  rpc :Delete, Google.Cloud.Compute.V1.DeleteAutoscalerRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetAutoscalerRequest, Google.Cloud.Compute.V1.Autoscaler

  rpc :Insert, Google.Cloud.Compute.V1.InsertAutoscalerRequest, Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListAutoscalersRequest,
      Google.Cloud.Compute.V1.AutoscalerList

  rpc :Patch, Google.Cloud.Compute.V1.PatchAutoscalerRequest, Google.Cloud.Compute.V1.Operation

  rpc :Update, Google.Cloud.Compute.V1.UpdateAutoscalerRequest, Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.Autoscalers.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Autoscalers.Service
end

defmodule Google.Cloud.Compute.V1.BackendBuckets.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.BackendBuckets",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AddSignedUrlKey,
      Google.Cloud.Compute.V1.AddSignedUrlKeyBackendBucketRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteBackendBucketRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :DeleteSignedUrlKey,
      Google.Cloud.Compute.V1.DeleteSignedUrlKeyBackendBucketRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetBackendBucketRequest, Google.Cloud.Compute.V1.BackendBucket

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertBackendBucketRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListBackendBucketsRequest,
      Google.Cloud.Compute.V1.BackendBucketList

  rpc :Patch, Google.Cloud.Compute.V1.PatchBackendBucketRequest, Google.Cloud.Compute.V1.Operation

  rpc :SetEdgeSecurityPolicy,
      Google.Cloud.Compute.V1.SetEdgeSecurityPolicyBackendBucketRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Update,
      Google.Cloud.Compute.V1.UpdateBackendBucketRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.BackendBuckets.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.BackendBuckets.Service
end

defmodule Google.Cloud.Compute.V1.BackendServices.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.BackendServices",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AddSignedUrlKey,
      Google.Cloud.Compute.V1.AddSignedUrlKeyBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListBackendServicesRequest,
      Google.Cloud.Compute.V1.BackendServiceAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :DeleteSignedUrlKey,
      Google.Cloud.Compute.V1.DeleteSignedUrlKeyBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetBackendServiceRequest,
      Google.Cloud.Compute.V1.BackendService

  rpc :GetHealth,
      Google.Cloud.Compute.V1.GetHealthBackendServiceRequest,
      Google.Cloud.Compute.V1.BackendServiceGroupHealth

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListBackendServicesRequest,
      Google.Cloud.Compute.V1.BackendServiceList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetEdgeSecurityPolicy,
      Google.Cloud.Compute.V1.SetEdgeSecurityPolicyBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetSecurityPolicy,
      Google.Cloud.Compute.V1.SetSecurityPolicyBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Update,
      Google.Cloud.Compute.V1.UpdateBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.BackendServices.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.BackendServices.Service
end

defmodule Google.Cloud.Compute.V1.DiskTypes.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.DiskTypes", protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListDiskTypesRequest,
      Google.Cloud.Compute.V1.DiskTypeAggregatedList

  rpc :Get, Google.Cloud.Compute.V1.GetDiskTypeRequest, Google.Cloud.Compute.V1.DiskType

  rpc :List, Google.Cloud.Compute.V1.ListDiskTypesRequest, Google.Cloud.Compute.V1.DiskTypeList
end

defmodule Google.Cloud.Compute.V1.DiskTypes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.DiskTypes.Service
end

defmodule Google.Cloud.Compute.V1.Disks.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Disks", protoc_gen_elixir_version: "0.11.0"

  rpc :AddResourcePolicies,
      Google.Cloud.Compute.V1.AddResourcePoliciesDiskRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListDisksRequest,
      Google.Cloud.Compute.V1.DiskAggregatedList

  rpc :CreateSnapshot,
      Google.Cloud.Compute.V1.CreateSnapshotDiskRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete, Google.Cloud.Compute.V1.DeleteDiskRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetDiskRequest, Google.Cloud.Compute.V1.Disk

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyDiskRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert, Google.Cloud.Compute.V1.InsertDiskRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListDisksRequest, Google.Cloud.Compute.V1.DiskList

  rpc :RemoveResourcePolicies,
      Google.Cloud.Compute.V1.RemoveResourcePoliciesDiskRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Resize, Google.Cloud.Compute.V1.ResizeDiskRequest, Google.Cloud.Compute.V1.Operation

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyDiskRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :SetLabels, Google.Cloud.Compute.V1.SetLabelsDiskRequest, Google.Cloud.Compute.V1.Operation

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsDiskRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.Disks.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Disks.Service
end

defmodule Google.Cloud.Compute.V1.ExternalVpnGateways.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.ExternalVpnGateways",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteExternalVpnGatewayRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetExternalVpnGatewayRequest,
      Google.Cloud.Compute.V1.ExternalVpnGateway

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertExternalVpnGatewayRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListExternalVpnGatewaysRequest,
      Google.Cloud.Compute.V1.ExternalVpnGatewayList

  rpc :SetLabels,
      Google.Cloud.Compute.V1.SetLabelsExternalVpnGatewayRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsExternalVpnGatewayRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.ExternalVpnGateways.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.ExternalVpnGateways.Service
end

defmodule Google.Cloud.Compute.V1.FirewallPolicies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.FirewallPolicies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AddAssociation,
      Google.Cloud.Compute.V1.AddAssociationFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AddRule,
      Google.Cloud.Compute.V1.AddRuleFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :CloneRules,
      Google.Cloud.Compute.V1.CloneRulesFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetFirewallPolicyRequest,
      Google.Cloud.Compute.V1.FirewallPolicy

  rpc :GetAssociation,
      Google.Cloud.Compute.V1.GetAssociationFirewallPolicyRequest,
      Google.Cloud.Compute.V1.FirewallPolicyAssociation

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :GetRule,
      Google.Cloud.Compute.V1.GetRuleFirewallPolicyRequest,
      Google.Cloud.Compute.V1.FirewallPolicyRule

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListFirewallPoliciesRequest,
      Google.Cloud.Compute.V1.FirewallPolicyList

  rpc :ListAssociations,
      Google.Cloud.Compute.V1.ListAssociationsFirewallPolicyRequest,
      Google.Cloud.Compute.V1.FirewallPoliciesListAssociationsResponse

  rpc :Move, Google.Cloud.Compute.V1.MoveFirewallPolicyRequest, Google.Cloud.Compute.V1.Operation

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :PatchRule,
      Google.Cloud.Compute.V1.PatchRuleFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :RemoveAssociation,
      Google.Cloud.Compute.V1.RemoveAssociationFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :RemoveRule,
      Google.Cloud.Compute.V1.RemoveRuleFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsFirewallPolicyRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.FirewallPolicies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.FirewallPolicies.Service
end

defmodule Google.Cloud.Compute.V1.Firewalls.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Firewalls", protoc_gen_elixir_version: "0.11.0"

  rpc :Delete, Google.Cloud.Compute.V1.DeleteFirewallRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetFirewallRequest, Google.Cloud.Compute.V1.Firewall

  rpc :Insert, Google.Cloud.Compute.V1.InsertFirewallRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListFirewallsRequest, Google.Cloud.Compute.V1.FirewallList

  rpc :Patch, Google.Cloud.Compute.V1.PatchFirewallRequest, Google.Cloud.Compute.V1.Operation

  rpc :Update, Google.Cloud.Compute.V1.UpdateFirewallRequest, Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.Firewalls.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Firewalls.Service
end

defmodule Google.Cloud.Compute.V1.ForwardingRules.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.ForwardingRules",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListForwardingRulesRequest,
      Google.Cloud.Compute.V1.ForwardingRuleAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteForwardingRuleRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetForwardingRuleRequest,
      Google.Cloud.Compute.V1.ForwardingRule

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertForwardingRuleRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListForwardingRulesRequest,
      Google.Cloud.Compute.V1.ForwardingRuleList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchForwardingRuleRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetLabels,
      Google.Cloud.Compute.V1.SetLabelsForwardingRuleRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetTarget,
      Google.Cloud.Compute.V1.SetTargetForwardingRuleRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.ForwardingRules.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.ForwardingRules.Service
end

defmodule Google.Cloud.Compute.V1.GlobalAddresses.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.GlobalAddresses",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteGlobalAddressRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetGlobalAddressRequest, Google.Cloud.Compute.V1.Address

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertGlobalAddressRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListGlobalAddressesRequest,
      Google.Cloud.Compute.V1.AddressList
end

defmodule Google.Cloud.Compute.V1.GlobalAddresses.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.GlobalAddresses.Service
end

defmodule Google.Cloud.Compute.V1.GlobalForwardingRules.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.GlobalForwardingRules",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteGlobalForwardingRuleRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetGlobalForwardingRuleRequest,
      Google.Cloud.Compute.V1.ForwardingRule

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertGlobalForwardingRuleRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListGlobalForwardingRulesRequest,
      Google.Cloud.Compute.V1.ForwardingRuleList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchGlobalForwardingRuleRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetLabels,
      Google.Cloud.Compute.V1.SetLabelsGlobalForwardingRuleRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetTarget,
      Google.Cloud.Compute.V1.SetTargetGlobalForwardingRuleRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.GlobalForwardingRules.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.GlobalForwardingRules.Service
end

defmodule Google.Cloud.Compute.V1.GlobalNetworkEndpointGroups.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.GlobalNetworkEndpointGroups",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AttachNetworkEndpoints,
      Google.Cloud.Compute.V1.AttachNetworkEndpointsGlobalNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteGlobalNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :DetachNetworkEndpoints,
      Google.Cloud.Compute.V1.DetachNetworkEndpointsGlobalNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetGlobalNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.NetworkEndpointGroup

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertGlobalNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListGlobalNetworkEndpointGroupsRequest,
      Google.Cloud.Compute.V1.NetworkEndpointGroupList

  rpc :ListNetworkEndpoints,
      Google.Cloud.Compute.V1.ListNetworkEndpointsGlobalNetworkEndpointGroupsRequest,
      Google.Cloud.Compute.V1.NetworkEndpointGroupsListNetworkEndpoints
end

defmodule Google.Cloud.Compute.V1.GlobalNetworkEndpointGroups.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.GlobalNetworkEndpointGroups.Service
end

defmodule Google.Cloud.Compute.V1.GlobalOperations.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.GlobalOperations",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListGlobalOperationsRequest,
      Google.Cloud.Compute.V1.OperationAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteGlobalOperationRequest,
      Google.Cloud.Compute.V1.DeleteGlobalOperationResponse

  rpc :Get, Google.Cloud.Compute.V1.GetGlobalOperationRequest, Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListGlobalOperationsRequest,
      Google.Cloud.Compute.V1.OperationList

  rpc :Wait, Google.Cloud.Compute.V1.WaitGlobalOperationRequest, Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.GlobalOperations.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.GlobalOperations.Service
end

defmodule Google.Cloud.Compute.V1.GlobalOrganizationOperations.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.GlobalOrganizationOperations",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteGlobalOrganizationOperationRequest,
      Google.Cloud.Compute.V1.DeleteGlobalOrganizationOperationResponse

  rpc :Get,
      Google.Cloud.Compute.V1.GetGlobalOrganizationOperationRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListGlobalOrganizationOperationsRequest,
      Google.Cloud.Compute.V1.OperationList
end

defmodule Google.Cloud.Compute.V1.GlobalOrganizationOperations.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.GlobalOrganizationOperations.Service
end

defmodule Google.Cloud.Compute.V1.GlobalPublicDelegatedPrefixes.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.GlobalPublicDelegatedPrefixes",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteGlobalPublicDelegatedPrefixeRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetGlobalPublicDelegatedPrefixeRequest,
      Google.Cloud.Compute.V1.PublicDelegatedPrefix

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertGlobalPublicDelegatedPrefixeRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListGlobalPublicDelegatedPrefixesRequest,
      Google.Cloud.Compute.V1.PublicDelegatedPrefixList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchGlobalPublicDelegatedPrefixeRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.GlobalPublicDelegatedPrefixes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.GlobalPublicDelegatedPrefixes.Service
end

defmodule Google.Cloud.Compute.V1.HealthChecks.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.HealthChecks",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListHealthChecksRequest,
      Google.Cloud.Compute.V1.HealthChecksAggregatedList

  rpc :Delete, Google.Cloud.Compute.V1.DeleteHealthCheckRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetHealthCheckRequest, Google.Cloud.Compute.V1.HealthCheck

  rpc :Insert, Google.Cloud.Compute.V1.InsertHealthCheckRequest, Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListHealthChecksRequest,
      Google.Cloud.Compute.V1.HealthCheckList

  rpc :Patch, Google.Cloud.Compute.V1.PatchHealthCheckRequest, Google.Cloud.Compute.V1.Operation

  rpc :Update, Google.Cloud.Compute.V1.UpdateHealthCheckRequest, Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.HealthChecks.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.HealthChecks.Service
end

defmodule Google.Cloud.Compute.V1.ImageFamilyViews.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.ImageFamilyViews",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Get,
      Google.Cloud.Compute.V1.GetImageFamilyViewRequest,
      Google.Cloud.Compute.V1.ImageFamilyView
end

defmodule Google.Cloud.Compute.V1.ImageFamilyViews.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.ImageFamilyViews.Service
end

defmodule Google.Cloud.Compute.V1.Images.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Images", protoc_gen_elixir_version: "0.11.0"

  rpc :Delete, Google.Cloud.Compute.V1.DeleteImageRequest, Google.Cloud.Compute.V1.Operation

  rpc :Deprecate, Google.Cloud.Compute.V1.DeprecateImageRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetImageRequest, Google.Cloud.Compute.V1.Image

  rpc :GetFromFamily,
      Google.Cloud.Compute.V1.GetFromFamilyImageRequest,
      Google.Cloud.Compute.V1.Image

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyImageRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert, Google.Cloud.Compute.V1.InsertImageRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListImagesRequest, Google.Cloud.Compute.V1.ImageList

  rpc :Patch, Google.Cloud.Compute.V1.PatchImageRequest, Google.Cloud.Compute.V1.Operation

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyImageRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :SetLabels, Google.Cloud.Compute.V1.SetLabelsImageRequest, Google.Cloud.Compute.V1.Operation

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsImageRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.Images.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Images.Service
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagers.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.InstanceGroupManagers",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AbandonInstances,
      Google.Cloud.Compute.V1.AbandonInstancesInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListInstanceGroupManagersRequest,
      Google.Cloud.Compute.V1.InstanceGroupManagerAggregatedList

  rpc :ApplyUpdatesToInstances,
      Google.Cloud.Compute.V1.ApplyUpdatesToInstancesInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :CreateInstances,
      Google.Cloud.Compute.V1.CreateInstancesInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :DeleteInstances,
      Google.Cloud.Compute.V1.DeleteInstancesInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :DeletePerInstanceConfigs,
      Google.Cloud.Compute.V1.DeletePerInstanceConfigsInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.InstanceGroupManager

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListInstanceGroupManagersRequest,
      Google.Cloud.Compute.V1.InstanceGroupManagerList

  rpc :ListErrors,
      Google.Cloud.Compute.V1.ListErrorsInstanceGroupManagersRequest,
      Google.Cloud.Compute.V1.InstanceGroupManagersListErrorsResponse

  rpc :ListManagedInstances,
      Google.Cloud.Compute.V1.ListManagedInstancesInstanceGroupManagersRequest,
      Google.Cloud.Compute.V1.InstanceGroupManagersListManagedInstancesResponse

  rpc :ListPerInstanceConfigs,
      Google.Cloud.Compute.V1.ListPerInstanceConfigsInstanceGroupManagersRequest,
      Google.Cloud.Compute.V1.InstanceGroupManagersListPerInstanceConfigsResp

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :PatchPerInstanceConfigs,
      Google.Cloud.Compute.V1.PatchPerInstanceConfigsInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :RecreateInstances,
      Google.Cloud.Compute.V1.RecreateInstancesInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Resize,
      Google.Cloud.Compute.V1.ResizeInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetInstanceTemplate,
      Google.Cloud.Compute.V1.SetInstanceTemplateInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetTargetPools,
      Google.Cloud.Compute.V1.SetTargetPoolsInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :UpdatePerInstanceConfigs,
      Google.Cloud.Compute.V1.UpdatePerInstanceConfigsInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.InstanceGroupManagers.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.InstanceGroupManagers.Service
end

defmodule Google.Cloud.Compute.V1.InstanceGroups.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.InstanceGroups",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AddInstances,
      Google.Cloud.Compute.V1.AddInstancesInstanceGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListInstanceGroupsRequest,
      Google.Cloud.Compute.V1.InstanceGroupAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteInstanceGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetInstanceGroupRequest, Google.Cloud.Compute.V1.InstanceGroup

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertInstanceGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListInstanceGroupsRequest,
      Google.Cloud.Compute.V1.InstanceGroupList

  rpc :ListInstances,
      Google.Cloud.Compute.V1.ListInstancesInstanceGroupsRequest,
      Google.Cloud.Compute.V1.InstanceGroupsListInstances

  rpc :RemoveInstances,
      Google.Cloud.Compute.V1.RemoveInstancesInstanceGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetNamedPorts,
      Google.Cloud.Compute.V1.SetNamedPortsInstanceGroupRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.InstanceGroups.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.InstanceGroups.Service
end

defmodule Google.Cloud.Compute.V1.InstanceTemplates.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.InstanceTemplates",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteInstanceTemplateRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetInstanceTemplateRequest,
      Google.Cloud.Compute.V1.InstanceTemplate

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyInstanceTemplateRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertInstanceTemplateRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListInstanceTemplatesRequest,
      Google.Cloud.Compute.V1.InstanceTemplateList

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyInstanceTemplateRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsInstanceTemplateRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.InstanceTemplates.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.InstanceTemplates.Service
end

defmodule Google.Cloud.Compute.V1.Instances.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Instances", protoc_gen_elixir_version: "0.11.0"

  rpc :AddAccessConfig,
      Google.Cloud.Compute.V1.AddAccessConfigInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AddResourcePolicies,
      Google.Cloud.Compute.V1.AddResourcePoliciesInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListInstancesRequest,
      Google.Cloud.Compute.V1.InstanceAggregatedList

  rpc :AttachDisk,
      Google.Cloud.Compute.V1.AttachDiskInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :BulkInsert,
      Google.Cloud.Compute.V1.BulkInsertInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete, Google.Cloud.Compute.V1.DeleteInstanceRequest, Google.Cloud.Compute.V1.Operation

  rpc :DeleteAccessConfig,
      Google.Cloud.Compute.V1.DeleteAccessConfigInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :DetachDisk,
      Google.Cloud.Compute.V1.DetachDiskInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetInstanceRequest, Google.Cloud.Compute.V1.Instance

  rpc :GetEffectiveFirewalls,
      Google.Cloud.Compute.V1.GetEffectiveFirewallsInstanceRequest,
      Google.Cloud.Compute.V1.InstancesGetEffectiveFirewallsResponse

  rpc :GetGuestAttributes,
      Google.Cloud.Compute.V1.GetGuestAttributesInstanceRequest,
      Google.Cloud.Compute.V1.GuestAttributes

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyInstanceRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :GetScreenshot,
      Google.Cloud.Compute.V1.GetScreenshotInstanceRequest,
      Google.Cloud.Compute.V1.Screenshot

  rpc :GetSerialPortOutput,
      Google.Cloud.Compute.V1.GetSerialPortOutputInstanceRequest,
      Google.Cloud.Compute.V1.SerialPortOutput

  rpc :GetShieldedInstanceIdentity,
      Google.Cloud.Compute.V1.GetShieldedInstanceIdentityInstanceRequest,
      Google.Cloud.Compute.V1.ShieldedInstanceIdentity

  rpc :Insert, Google.Cloud.Compute.V1.InsertInstanceRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListInstancesRequest, Google.Cloud.Compute.V1.InstanceList

  rpc :ListReferrers,
      Google.Cloud.Compute.V1.ListReferrersInstancesRequest,
      Google.Cloud.Compute.V1.InstanceListReferrers

  rpc :RemoveResourcePolicies,
      Google.Cloud.Compute.V1.RemoveResourcePoliciesInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Reset, Google.Cloud.Compute.V1.ResetInstanceRequest, Google.Cloud.Compute.V1.Operation

  rpc :Resume, Google.Cloud.Compute.V1.ResumeInstanceRequest, Google.Cloud.Compute.V1.Operation

  rpc :SendDiagnosticInterrupt,
      Google.Cloud.Compute.V1.SendDiagnosticInterruptInstanceRequest,
      Google.Cloud.Compute.V1.SendDiagnosticInterruptInstanceResponse

  rpc :SetDeletionProtection,
      Google.Cloud.Compute.V1.SetDeletionProtectionInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetDiskAutoDelete,
      Google.Cloud.Compute.V1.SetDiskAutoDeleteInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyInstanceRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :SetLabels,
      Google.Cloud.Compute.V1.SetLabelsInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetMachineResources,
      Google.Cloud.Compute.V1.SetMachineResourcesInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetMachineType,
      Google.Cloud.Compute.V1.SetMachineTypeInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetMetadata,
      Google.Cloud.Compute.V1.SetMetadataInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetMinCpuPlatform,
      Google.Cloud.Compute.V1.SetMinCpuPlatformInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetScheduling,
      Google.Cloud.Compute.V1.SetSchedulingInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetServiceAccount,
      Google.Cloud.Compute.V1.SetServiceAccountInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetShieldedInstanceIntegrityPolicy,
      Google.Cloud.Compute.V1.SetShieldedInstanceIntegrityPolicyInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetTags, Google.Cloud.Compute.V1.SetTagsInstanceRequest, Google.Cloud.Compute.V1.Operation

  rpc :SimulateMaintenanceEvent,
      Google.Cloud.Compute.V1.SimulateMaintenanceEventInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Start, Google.Cloud.Compute.V1.StartInstanceRequest, Google.Cloud.Compute.V1.Operation

  rpc :StartWithEncryptionKey,
      Google.Cloud.Compute.V1.StartWithEncryptionKeyInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Stop, Google.Cloud.Compute.V1.StopInstanceRequest, Google.Cloud.Compute.V1.Operation

  rpc :Suspend, Google.Cloud.Compute.V1.SuspendInstanceRequest, Google.Cloud.Compute.V1.Operation

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsInstanceRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse

  rpc :Update, Google.Cloud.Compute.V1.UpdateInstanceRequest, Google.Cloud.Compute.V1.Operation

  rpc :UpdateAccessConfig,
      Google.Cloud.Compute.V1.UpdateAccessConfigInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :UpdateDisplayDevice,
      Google.Cloud.Compute.V1.UpdateDisplayDeviceInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :UpdateNetworkInterface,
      Google.Cloud.Compute.V1.UpdateNetworkInterfaceInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :UpdateShieldedInstanceConfig,
      Google.Cloud.Compute.V1.UpdateShieldedInstanceConfigInstanceRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.Instances.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Instances.Service
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachments.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.InterconnectAttachments",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListInterconnectAttachmentsRequest,
      Google.Cloud.Compute.V1.InterconnectAttachmentAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteInterconnectAttachmentRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetInterconnectAttachmentRequest,
      Google.Cloud.Compute.V1.InterconnectAttachment

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertInterconnectAttachmentRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListInterconnectAttachmentsRequest,
      Google.Cloud.Compute.V1.InterconnectAttachmentList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchInterconnectAttachmentRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.InterconnectAttachments.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.InterconnectAttachments.Service
end

defmodule Google.Cloud.Compute.V1.InterconnectLocations.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.InterconnectLocations",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Get,
      Google.Cloud.Compute.V1.GetInterconnectLocationRequest,
      Google.Cloud.Compute.V1.InterconnectLocation

  rpc :List,
      Google.Cloud.Compute.V1.ListInterconnectLocationsRequest,
      Google.Cloud.Compute.V1.InterconnectLocationList
end

defmodule Google.Cloud.Compute.V1.InterconnectLocations.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.InterconnectLocations.Service
end

defmodule Google.Cloud.Compute.V1.Interconnects.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.Interconnects",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteInterconnectRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetInterconnectRequest, Google.Cloud.Compute.V1.Interconnect

  rpc :GetDiagnostics,
      Google.Cloud.Compute.V1.GetDiagnosticsInterconnectRequest,
      Google.Cloud.Compute.V1.InterconnectsGetDiagnosticsResponse

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertInterconnectRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListInterconnectsRequest,
      Google.Cloud.Compute.V1.InterconnectList

  rpc :Patch, Google.Cloud.Compute.V1.PatchInterconnectRequest, Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.Interconnects.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Interconnects.Service
end

defmodule Google.Cloud.Compute.V1.LicenseCodes.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.LicenseCodes",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Get, Google.Cloud.Compute.V1.GetLicenseCodeRequest, Google.Cloud.Compute.V1.LicenseCode

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsLicenseCodeRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.LicenseCodes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.LicenseCodes.Service
end

defmodule Google.Cloud.Compute.V1.Licenses.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Licenses", protoc_gen_elixir_version: "0.11.0"

  rpc :Delete, Google.Cloud.Compute.V1.DeleteLicenseRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetLicenseRequest, Google.Cloud.Compute.V1.License

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyLicenseRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert, Google.Cloud.Compute.V1.InsertLicenseRequest, Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListLicensesRequest,
      Google.Cloud.Compute.V1.LicensesListResponse

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyLicenseRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsLicenseRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.Licenses.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Licenses.Service
end

defmodule Google.Cloud.Compute.V1.MachineImages.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.MachineImages",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteMachineImageRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetMachineImageRequest, Google.Cloud.Compute.V1.MachineImage

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyMachineImageRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertMachineImageRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListMachineImagesRequest,
      Google.Cloud.Compute.V1.MachineImageList

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyMachineImageRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsMachineImageRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.MachineImages.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.MachineImages.Service
end

defmodule Google.Cloud.Compute.V1.MachineTypes.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.MachineTypes",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListMachineTypesRequest,
      Google.Cloud.Compute.V1.MachineTypeAggregatedList

  rpc :Get, Google.Cloud.Compute.V1.GetMachineTypeRequest, Google.Cloud.Compute.V1.MachineType

  rpc :List,
      Google.Cloud.Compute.V1.ListMachineTypesRequest,
      Google.Cloud.Compute.V1.MachineTypeList
end

defmodule Google.Cloud.Compute.V1.MachineTypes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.MachineTypes.Service
end

defmodule Google.Cloud.Compute.V1.NetworkEdgeSecurityServices.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.NetworkEdgeSecurityServices",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListNetworkEdgeSecurityServicesRequest,
      Google.Cloud.Compute.V1.NetworkEdgeSecurityServiceAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteNetworkEdgeSecurityServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetNetworkEdgeSecurityServiceRequest,
      Google.Cloud.Compute.V1.NetworkEdgeSecurityService

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertNetworkEdgeSecurityServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchNetworkEdgeSecurityServiceRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.NetworkEdgeSecurityServices.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.NetworkEdgeSecurityServices.Service
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroups.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.NetworkEndpointGroups",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListNetworkEndpointGroupsRequest,
      Google.Cloud.Compute.V1.NetworkEndpointGroupAggregatedList

  rpc :AttachNetworkEndpoints,
      Google.Cloud.Compute.V1.AttachNetworkEndpointsNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :DetachNetworkEndpoints,
      Google.Cloud.Compute.V1.DetachNetworkEndpointsNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.NetworkEndpointGroup

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListNetworkEndpointGroupsRequest,
      Google.Cloud.Compute.V1.NetworkEndpointGroupList

  rpc :ListNetworkEndpoints,
      Google.Cloud.Compute.V1.ListNetworkEndpointsNetworkEndpointGroupsRequest,
      Google.Cloud.Compute.V1.NetworkEndpointGroupsListNetworkEndpoints

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.NetworkEndpointGroups.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.NetworkEndpointGroups.Service
end

defmodule Google.Cloud.Compute.V1.NetworkFirewallPolicies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.NetworkFirewallPolicies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AddAssociation,
      Google.Cloud.Compute.V1.AddAssociationNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AddRule,
      Google.Cloud.Compute.V1.AddRuleNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :CloneRules,
      Google.Cloud.Compute.V1.CloneRulesNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.FirewallPolicy

  rpc :GetAssociation,
      Google.Cloud.Compute.V1.GetAssociationNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.FirewallPolicyAssociation

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :GetRule,
      Google.Cloud.Compute.V1.GetRuleNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.FirewallPolicyRule

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListNetworkFirewallPoliciesRequest,
      Google.Cloud.Compute.V1.FirewallPolicyList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :PatchRule,
      Google.Cloud.Compute.V1.PatchRuleNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :RemoveAssociation,
      Google.Cloud.Compute.V1.RemoveAssociationNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :RemoveRule,
      Google.Cloud.Compute.V1.RemoveRuleNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.NetworkFirewallPolicies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.NetworkFirewallPolicies.Service
end

defmodule Google.Cloud.Compute.V1.Networks.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Networks", protoc_gen_elixir_version: "0.11.0"

  rpc :AddPeering,
      Google.Cloud.Compute.V1.AddPeeringNetworkRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete, Google.Cloud.Compute.V1.DeleteNetworkRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetNetworkRequest, Google.Cloud.Compute.V1.Network

  rpc :GetEffectiveFirewalls,
      Google.Cloud.Compute.V1.GetEffectiveFirewallsNetworkRequest,
      Google.Cloud.Compute.V1.NetworksGetEffectiveFirewallsResponse

  rpc :Insert, Google.Cloud.Compute.V1.InsertNetworkRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListNetworksRequest, Google.Cloud.Compute.V1.NetworkList

  rpc :ListPeeringRoutes,
      Google.Cloud.Compute.V1.ListPeeringRoutesNetworksRequest,
      Google.Cloud.Compute.V1.ExchangedPeeringRoutesList

  rpc :Patch, Google.Cloud.Compute.V1.PatchNetworkRequest, Google.Cloud.Compute.V1.Operation

  rpc :RemovePeering,
      Google.Cloud.Compute.V1.RemovePeeringNetworkRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SwitchToCustomMode,
      Google.Cloud.Compute.V1.SwitchToCustomModeNetworkRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :UpdatePeering,
      Google.Cloud.Compute.V1.UpdatePeeringNetworkRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.Networks.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Networks.Service
end

defmodule Google.Cloud.Compute.V1.NodeGroups.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.NodeGroups",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AddNodes,
      Google.Cloud.Compute.V1.AddNodesNodeGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListNodeGroupsRequest,
      Google.Cloud.Compute.V1.NodeGroupAggregatedList

  rpc :Delete, Google.Cloud.Compute.V1.DeleteNodeGroupRequest, Google.Cloud.Compute.V1.Operation

  rpc :DeleteNodes,
      Google.Cloud.Compute.V1.DeleteNodesNodeGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetNodeGroupRequest, Google.Cloud.Compute.V1.NodeGroup

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyNodeGroupRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert, Google.Cloud.Compute.V1.InsertNodeGroupRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListNodeGroupsRequest, Google.Cloud.Compute.V1.NodeGroupList

  rpc :ListNodes,
      Google.Cloud.Compute.V1.ListNodesNodeGroupsRequest,
      Google.Cloud.Compute.V1.NodeGroupsListNodes

  rpc :Patch, Google.Cloud.Compute.V1.PatchNodeGroupRequest, Google.Cloud.Compute.V1.Operation

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyNodeGroupRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :SetNodeTemplate,
      Google.Cloud.Compute.V1.SetNodeTemplateNodeGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsNodeGroupRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.NodeGroups.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.NodeGroups.Service
end

defmodule Google.Cloud.Compute.V1.NodeTemplates.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.NodeTemplates",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListNodeTemplatesRequest,
      Google.Cloud.Compute.V1.NodeTemplateAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteNodeTemplateRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetNodeTemplateRequest, Google.Cloud.Compute.V1.NodeTemplate

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyNodeTemplateRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertNodeTemplateRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListNodeTemplatesRequest,
      Google.Cloud.Compute.V1.NodeTemplateList

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyNodeTemplateRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsNodeTemplateRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.NodeTemplates.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.NodeTemplates.Service
end

defmodule Google.Cloud.Compute.V1.NodeTypes.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.NodeTypes", protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListNodeTypesRequest,
      Google.Cloud.Compute.V1.NodeTypeAggregatedList

  rpc :Get, Google.Cloud.Compute.V1.GetNodeTypeRequest, Google.Cloud.Compute.V1.NodeType

  rpc :List, Google.Cloud.Compute.V1.ListNodeTypesRequest, Google.Cloud.Compute.V1.NodeTypeList
end

defmodule Google.Cloud.Compute.V1.NodeTypes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.NodeTypes.Service
end

defmodule Google.Cloud.Compute.V1.PacketMirrorings.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.PacketMirrorings",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListPacketMirroringsRequest,
      Google.Cloud.Compute.V1.PacketMirroringAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeletePacketMirroringRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetPacketMirroringRequest,
      Google.Cloud.Compute.V1.PacketMirroring

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertPacketMirroringRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListPacketMirroringsRequest,
      Google.Cloud.Compute.V1.PacketMirroringList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchPacketMirroringRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsPacketMirroringRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.PacketMirrorings.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.PacketMirrorings.Service
end

defmodule Google.Cloud.Compute.V1.Projects.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Projects", protoc_gen_elixir_version: "0.11.0"

  rpc :DisableXpnHost,
      Google.Cloud.Compute.V1.DisableXpnHostProjectRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :DisableXpnResource,
      Google.Cloud.Compute.V1.DisableXpnResourceProjectRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :EnableXpnHost,
      Google.Cloud.Compute.V1.EnableXpnHostProjectRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :EnableXpnResource,
      Google.Cloud.Compute.V1.EnableXpnResourceProjectRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetProjectRequest, Google.Cloud.Compute.V1.Project

  rpc :GetXpnHost,
      Google.Cloud.Compute.V1.GetXpnHostProjectRequest,
      Google.Cloud.Compute.V1.Project

  rpc :GetXpnResources,
      Google.Cloud.Compute.V1.GetXpnResourcesProjectsRequest,
      Google.Cloud.Compute.V1.ProjectsGetXpnResources

  rpc :ListXpnHosts,
      Google.Cloud.Compute.V1.ListXpnHostsProjectsRequest,
      Google.Cloud.Compute.V1.XpnHostList

  rpc :MoveDisk, Google.Cloud.Compute.V1.MoveDiskProjectRequest, Google.Cloud.Compute.V1.Operation

  rpc :MoveInstance,
      Google.Cloud.Compute.V1.MoveInstanceProjectRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetCommonInstanceMetadata,
      Google.Cloud.Compute.V1.SetCommonInstanceMetadataProjectRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetDefaultNetworkTier,
      Google.Cloud.Compute.V1.SetDefaultNetworkTierProjectRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetUsageExportBucket,
      Google.Cloud.Compute.V1.SetUsageExportBucketProjectRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.Projects.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Projects.Service
end

defmodule Google.Cloud.Compute.V1.PublicAdvertisedPrefixes.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.PublicAdvertisedPrefixes",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeletePublicAdvertisedPrefixeRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetPublicAdvertisedPrefixeRequest,
      Google.Cloud.Compute.V1.PublicAdvertisedPrefix

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertPublicAdvertisedPrefixeRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListPublicAdvertisedPrefixesRequest,
      Google.Cloud.Compute.V1.PublicAdvertisedPrefixList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchPublicAdvertisedPrefixeRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.PublicAdvertisedPrefixes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.PublicAdvertisedPrefixes.Service
end

defmodule Google.Cloud.Compute.V1.PublicDelegatedPrefixes.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.PublicDelegatedPrefixes",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListPublicDelegatedPrefixesRequest,
      Google.Cloud.Compute.V1.PublicDelegatedPrefixAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeletePublicDelegatedPrefixeRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetPublicDelegatedPrefixeRequest,
      Google.Cloud.Compute.V1.PublicDelegatedPrefix

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertPublicDelegatedPrefixeRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListPublicDelegatedPrefixesRequest,
      Google.Cloud.Compute.V1.PublicDelegatedPrefixList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchPublicDelegatedPrefixeRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.PublicDelegatedPrefixes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.PublicDelegatedPrefixes.Service
end

defmodule Google.Cloud.Compute.V1.RegionAutoscalers.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionAutoscalers",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionAutoscalerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetRegionAutoscalerRequest, Google.Cloud.Compute.V1.Autoscaler

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionAutoscalerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionAutoscalersRequest,
      Google.Cloud.Compute.V1.RegionAutoscalerList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchRegionAutoscalerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Update,
      Google.Cloud.Compute.V1.UpdateRegionAutoscalerRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionAutoscalers.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionAutoscalers.Service
end

defmodule Google.Cloud.Compute.V1.RegionBackendServices.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionBackendServices",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionBackendServiceRequest,
      Google.Cloud.Compute.V1.BackendService

  rpc :GetHealth,
      Google.Cloud.Compute.V1.GetHealthRegionBackendServiceRequest,
      Google.Cloud.Compute.V1.BackendServiceGroupHealth

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionBackendServicesRequest,
      Google.Cloud.Compute.V1.BackendServiceList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchRegionBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Update,
      Google.Cloud.Compute.V1.UpdateRegionBackendServiceRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionBackendServices.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionBackendServices.Service
end

defmodule Google.Cloud.Compute.V1.RegionCommitments.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionCommitments",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListRegionCommitmentsRequest,
      Google.Cloud.Compute.V1.CommitmentAggregatedList

  rpc :Get, Google.Cloud.Compute.V1.GetRegionCommitmentRequest, Google.Cloud.Compute.V1.Commitment

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionCommitmentRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionCommitmentsRequest,
      Google.Cloud.Compute.V1.CommitmentList

  rpc :Update,
      Google.Cloud.Compute.V1.UpdateRegionCommitmentRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionCommitments.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionCommitments.Service
end

defmodule Google.Cloud.Compute.V1.RegionDiskTypes.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionDiskTypes",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Get, Google.Cloud.Compute.V1.GetRegionDiskTypeRequest, Google.Cloud.Compute.V1.DiskType

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionDiskTypesRequest,
      Google.Cloud.Compute.V1.RegionDiskTypeList
end

defmodule Google.Cloud.Compute.V1.RegionDiskTypes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionDiskTypes.Service
end

defmodule Google.Cloud.Compute.V1.RegionDisks.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionDisks",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AddResourcePolicies,
      Google.Cloud.Compute.V1.AddResourcePoliciesRegionDiskRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :CreateSnapshot,
      Google.Cloud.Compute.V1.CreateSnapshotRegionDiskRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete, Google.Cloud.Compute.V1.DeleteRegionDiskRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetRegionDiskRequest, Google.Cloud.Compute.V1.Disk

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyRegionDiskRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert, Google.Cloud.Compute.V1.InsertRegionDiskRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListRegionDisksRequest, Google.Cloud.Compute.V1.DiskList

  rpc :RemoveResourcePolicies,
      Google.Cloud.Compute.V1.RemoveResourcePoliciesRegionDiskRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Resize, Google.Cloud.Compute.V1.ResizeRegionDiskRequest, Google.Cloud.Compute.V1.Operation

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyRegionDiskRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :SetLabels,
      Google.Cloud.Compute.V1.SetLabelsRegionDiskRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsRegionDiskRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.RegionDisks.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionDisks.Service
end

defmodule Google.Cloud.Compute.V1.RegionHealthCheckServices.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionHealthCheckServices",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionHealthCheckServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionHealthCheckServiceRequest,
      Google.Cloud.Compute.V1.HealthCheckService

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionHealthCheckServiceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionHealthCheckServicesRequest,
      Google.Cloud.Compute.V1.HealthCheckServicesList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchRegionHealthCheckServiceRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionHealthCheckServices.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionHealthCheckServices.Service
end

defmodule Google.Cloud.Compute.V1.RegionHealthChecks.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionHealthChecks",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionHealthCheckRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionHealthCheckRequest,
      Google.Cloud.Compute.V1.HealthCheck

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionHealthCheckRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionHealthChecksRequest,
      Google.Cloud.Compute.V1.HealthCheckList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchRegionHealthCheckRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Update,
      Google.Cloud.Compute.V1.UpdateRegionHealthCheckRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionHealthChecks.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionHealthChecks.Service
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagers.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionInstanceGroupManagers",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AbandonInstances,
      Google.Cloud.Compute.V1.AbandonInstancesRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :ApplyUpdatesToInstances,
      Google.Cloud.Compute.V1.ApplyUpdatesToInstancesRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :CreateInstances,
      Google.Cloud.Compute.V1.CreateInstancesRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :DeleteInstances,
      Google.Cloud.Compute.V1.DeleteInstancesRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :DeletePerInstanceConfigs,
      Google.Cloud.Compute.V1.DeletePerInstanceConfigsRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.InstanceGroupManager

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionInstanceGroupManagersRequest,
      Google.Cloud.Compute.V1.RegionInstanceGroupManagerList

  rpc :ListErrors,
      Google.Cloud.Compute.V1.ListErrorsRegionInstanceGroupManagersRequest,
      Google.Cloud.Compute.V1.RegionInstanceGroupManagersListErrorsResponse

  rpc :ListManagedInstances,
      Google.Cloud.Compute.V1.ListManagedInstancesRegionInstanceGroupManagersRequest,
      Google.Cloud.Compute.V1.RegionInstanceGroupManagersListInstancesResponse

  rpc :ListPerInstanceConfigs,
      Google.Cloud.Compute.V1.ListPerInstanceConfigsRegionInstanceGroupManagersRequest,
      Google.Cloud.Compute.V1.RegionInstanceGroupManagersListInstanceConfigsResp

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :PatchPerInstanceConfigs,
      Google.Cloud.Compute.V1.PatchPerInstanceConfigsRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :RecreateInstances,
      Google.Cloud.Compute.V1.RecreateInstancesRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Resize,
      Google.Cloud.Compute.V1.ResizeRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetInstanceTemplate,
      Google.Cloud.Compute.V1.SetInstanceTemplateRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetTargetPools,
      Google.Cloud.Compute.V1.SetTargetPoolsRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :UpdatePerInstanceConfigs,
      Google.Cloud.Compute.V1.UpdatePerInstanceConfigsRegionInstanceGroupManagerRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroupManagers.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionInstanceGroupManagers.Service
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroups.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionInstanceGroups",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionInstanceGroupRequest,
      Google.Cloud.Compute.V1.InstanceGroup

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionInstanceGroupsRequest,
      Google.Cloud.Compute.V1.RegionInstanceGroupList

  rpc :ListInstances,
      Google.Cloud.Compute.V1.ListInstancesRegionInstanceGroupsRequest,
      Google.Cloud.Compute.V1.RegionInstanceGroupsListInstances

  rpc :SetNamedPorts,
      Google.Cloud.Compute.V1.SetNamedPortsRegionInstanceGroupRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionInstanceGroups.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionInstanceGroups.Service
end

defmodule Google.Cloud.Compute.V1.RegionInstances.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionInstances",
    protoc_gen_elixir_version: "0.11.0"

  rpc :BulkInsert,
      Google.Cloud.Compute.V1.BulkInsertRegionInstanceRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionInstances.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionInstances.Service
end

defmodule Google.Cloud.Compute.V1.RegionNetworkEndpointGroups.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionNetworkEndpointGroups",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.NetworkEndpointGroup

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionNetworkEndpointGroupRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionNetworkEndpointGroupsRequest,
      Google.Cloud.Compute.V1.NetworkEndpointGroupList
end

defmodule Google.Cloud.Compute.V1.RegionNetworkEndpointGroups.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionNetworkEndpointGroups.Service
end

defmodule Google.Cloud.Compute.V1.RegionNetworkFirewallPolicies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionNetworkFirewallPolicies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AddAssociation,
      Google.Cloud.Compute.V1.AddAssociationRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AddRule,
      Google.Cloud.Compute.V1.AddRuleRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :CloneRules,
      Google.Cloud.Compute.V1.CloneRulesRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.FirewallPolicy

  rpc :GetAssociation,
      Google.Cloud.Compute.V1.GetAssociationRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.FirewallPolicyAssociation

  rpc :GetEffectiveFirewalls,
      Google.Cloud.Compute.V1.GetEffectiveFirewallsRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :GetRule,
      Google.Cloud.Compute.V1.GetRuleRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.FirewallPolicyRule

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionNetworkFirewallPoliciesRequest,
      Google.Cloud.Compute.V1.FirewallPolicyList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :PatchRule,
      Google.Cloud.Compute.V1.PatchRuleRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :RemoveAssociation,
      Google.Cloud.Compute.V1.RemoveAssociationRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :RemoveRule,
      Google.Cloud.Compute.V1.RemoveRuleRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsRegionNetworkFirewallPolicyRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.RegionNetworkFirewallPolicies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionNetworkFirewallPolicies.Service
end

defmodule Google.Cloud.Compute.V1.RegionNotificationEndpoints.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionNotificationEndpoints",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionNotificationEndpointRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionNotificationEndpointRequest,
      Google.Cloud.Compute.V1.NotificationEndpoint

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionNotificationEndpointRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionNotificationEndpointsRequest,
      Google.Cloud.Compute.V1.NotificationEndpointList
end

defmodule Google.Cloud.Compute.V1.RegionNotificationEndpoints.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionNotificationEndpoints.Service
end

defmodule Google.Cloud.Compute.V1.RegionOperations.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionOperations",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionOperationRequest,
      Google.Cloud.Compute.V1.DeleteRegionOperationResponse

  rpc :Get, Google.Cloud.Compute.V1.GetRegionOperationRequest, Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionOperationsRequest,
      Google.Cloud.Compute.V1.OperationList

  rpc :Wait, Google.Cloud.Compute.V1.WaitRegionOperationRequest, Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionOperations.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionOperations.Service
end

defmodule Google.Cloud.Compute.V1.RegionSecurityPolicies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionSecurityPolicies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionSecurityPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionSecurityPolicyRequest,
      Google.Cloud.Compute.V1.SecurityPolicy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionSecurityPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionSecurityPoliciesRequest,
      Google.Cloud.Compute.V1.SecurityPolicyList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchRegionSecurityPolicyRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionSecurityPolicies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionSecurityPolicies.Service
end

defmodule Google.Cloud.Compute.V1.RegionSslCertificates.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionSslCertificates",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionSslCertificateRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionSslCertificateRequest,
      Google.Cloud.Compute.V1.SslCertificate

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionSslCertificateRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionSslCertificatesRequest,
      Google.Cloud.Compute.V1.SslCertificateList
end

defmodule Google.Cloud.Compute.V1.RegionSslCertificates.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionSslCertificates.Service
end

defmodule Google.Cloud.Compute.V1.RegionTargetHttpProxies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionTargetHttpProxies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionTargetHttpProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionTargetHttpProxyRequest,
      Google.Cloud.Compute.V1.TargetHttpProxy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionTargetHttpProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionTargetHttpProxiesRequest,
      Google.Cloud.Compute.V1.TargetHttpProxyList

  rpc :SetUrlMap,
      Google.Cloud.Compute.V1.SetUrlMapRegionTargetHttpProxyRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionTargetHttpProxies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionTargetHttpProxies.Service
end

defmodule Google.Cloud.Compute.V1.RegionTargetHttpsProxies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionTargetHttpsProxies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetRegionTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.TargetHttpsProxy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListRegionTargetHttpsProxiesRequest,
      Google.Cloud.Compute.V1.TargetHttpsProxyList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchRegionTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetSslCertificates,
      Google.Cloud.Compute.V1.SetSslCertificatesRegionTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetUrlMap,
      Google.Cloud.Compute.V1.SetUrlMapRegionTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.RegionTargetHttpsProxies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionTargetHttpsProxies.Service
end

defmodule Google.Cloud.Compute.V1.RegionUrlMaps.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.RegionUrlMaps",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteRegionUrlMapRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetRegionUrlMapRequest, Google.Cloud.Compute.V1.UrlMap

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertRegionUrlMapRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListRegionUrlMapsRequest, Google.Cloud.Compute.V1.UrlMapList

  rpc :Patch, Google.Cloud.Compute.V1.PatchRegionUrlMapRequest, Google.Cloud.Compute.V1.Operation

  rpc :Update,
      Google.Cloud.Compute.V1.UpdateRegionUrlMapRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Validate,
      Google.Cloud.Compute.V1.ValidateRegionUrlMapRequest,
      Google.Cloud.Compute.V1.UrlMapsValidateResponse
end

defmodule Google.Cloud.Compute.V1.RegionUrlMaps.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.RegionUrlMaps.Service
end

defmodule Google.Cloud.Compute.V1.Regions.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Regions", protoc_gen_elixir_version: "0.11.0"

  rpc :Get, Google.Cloud.Compute.V1.GetRegionRequest, Google.Cloud.Compute.V1.Region

  rpc :List, Google.Cloud.Compute.V1.ListRegionsRequest, Google.Cloud.Compute.V1.RegionList
end

defmodule Google.Cloud.Compute.V1.Regions.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Regions.Service
end

defmodule Google.Cloud.Compute.V1.Reservations.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.Reservations",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListReservationsRequest,
      Google.Cloud.Compute.V1.ReservationAggregatedList

  rpc :Delete, Google.Cloud.Compute.V1.DeleteReservationRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetReservationRequest, Google.Cloud.Compute.V1.Reservation

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyReservationRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert, Google.Cloud.Compute.V1.InsertReservationRequest, Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListReservationsRequest,
      Google.Cloud.Compute.V1.ReservationList

  rpc :Resize, Google.Cloud.Compute.V1.ResizeReservationRequest, Google.Cloud.Compute.V1.Operation

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyReservationRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsReservationRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse

  rpc :Update, Google.Cloud.Compute.V1.UpdateReservationRequest, Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.Reservations.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Reservations.Service
end

defmodule Google.Cloud.Compute.V1.ResourcePolicies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.ResourcePolicies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListResourcePoliciesRequest,
      Google.Cloud.Compute.V1.ResourcePolicyAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteResourcePolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetResourcePolicyRequest,
      Google.Cloud.Compute.V1.ResourcePolicy

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyResourcePolicyRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertResourcePolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListResourcePoliciesRequest,
      Google.Cloud.Compute.V1.ResourcePolicyList

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyResourcePolicyRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsResourcePolicyRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.ResourcePolicies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.ResourcePolicies.Service
end

defmodule Google.Cloud.Compute.V1.Routers.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Routers", protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListRoutersRequest,
      Google.Cloud.Compute.V1.RouterAggregatedList

  rpc :Delete, Google.Cloud.Compute.V1.DeleteRouterRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetRouterRequest, Google.Cloud.Compute.V1.Router

  rpc :GetNatMappingInfo,
      Google.Cloud.Compute.V1.GetNatMappingInfoRoutersRequest,
      Google.Cloud.Compute.V1.VmEndpointNatMappingsList

  rpc :GetRouterStatus,
      Google.Cloud.Compute.V1.GetRouterStatusRouterRequest,
      Google.Cloud.Compute.V1.RouterStatusResponse

  rpc :Insert, Google.Cloud.Compute.V1.InsertRouterRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListRoutersRequest, Google.Cloud.Compute.V1.RouterList

  rpc :Patch, Google.Cloud.Compute.V1.PatchRouterRequest, Google.Cloud.Compute.V1.Operation

  rpc :Preview,
      Google.Cloud.Compute.V1.PreviewRouterRequest,
      Google.Cloud.Compute.V1.RoutersPreviewResponse

  rpc :Update, Google.Cloud.Compute.V1.UpdateRouterRequest, Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.Routers.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Routers.Service
end

defmodule Google.Cloud.Compute.V1.Routes.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Routes", protoc_gen_elixir_version: "0.11.0"

  rpc :Delete, Google.Cloud.Compute.V1.DeleteRouteRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetRouteRequest, Google.Cloud.Compute.V1.Route

  rpc :Insert, Google.Cloud.Compute.V1.InsertRouteRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListRoutesRequest, Google.Cloud.Compute.V1.RouteList
end

defmodule Google.Cloud.Compute.V1.Routes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Routes.Service
end

defmodule Google.Cloud.Compute.V1.SecurityPolicies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.SecurityPolicies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AddRule,
      Google.Cloud.Compute.V1.AddRuleSecurityPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListSecurityPoliciesRequest,
      Google.Cloud.Compute.V1.SecurityPoliciesAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteSecurityPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetSecurityPolicyRequest,
      Google.Cloud.Compute.V1.SecurityPolicy

  rpc :GetRule,
      Google.Cloud.Compute.V1.GetRuleSecurityPolicyRequest,
      Google.Cloud.Compute.V1.SecurityPolicyRule

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertSecurityPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListSecurityPoliciesRequest,
      Google.Cloud.Compute.V1.SecurityPolicyList

  rpc :ListPreconfiguredExpressionSets,
      Google.Cloud.Compute.V1.ListPreconfiguredExpressionSetsSecurityPoliciesRequest,
      Google.Cloud.Compute.V1.SecurityPoliciesListPreconfiguredExpressionSetsResponse

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchSecurityPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :PatchRule,
      Google.Cloud.Compute.V1.PatchRuleSecurityPolicyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :RemoveRule,
      Google.Cloud.Compute.V1.RemoveRuleSecurityPolicyRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.SecurityPolicies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.SecurityPolicies.Service
end

defmodule Google.Cloud.Compute.V1.ServiceAttachments.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.ServiceAttachments",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListServiceAttachmentsRequest,
      Google.Cloud.Compute.V1.ServiceAttachmentAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteServiceAttachmentRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetServiceAttachmentRequest,
      Google.Cloud.Compute.V1.ServiceAttachment

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicyServiceAttachmentRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertServiceAttachmentRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListServiceAttachmentsRequest,
      Google.Cloud.Compute.V1.ServiceAttachmentList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchServiceAttachmentRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicyServiceAttachmentRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsServiceAttachmentRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.ServiceAttachments.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.ServiceAttachments.Service
end

defmodule Google.Cloud.Compute.V1.Snapshots.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Snapshots", protoc_gen_elixir_version: "0.11.0"

  rpc :Delete, Google.Cloud.Compute.V1.DeleteSnapshotRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetSnapshotRequest, Google.Cloud.Compute.V1.Snapshot

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicySnapshotRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert, Google.Cloud.Compute.V1.InsertSnapshotRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListSnapshotsRequest, Google.Cloud.Compute.V1.SnapshotList

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicySnapshotRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :SetLabels,
      Google.Cloud.Compute.V1.SetLabelsSnapshotRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsSnapshotRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.Snapshots.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Snapshots.Service
end

defmodule Google.Cloud.Compute.V1.SslCertificates.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.SslCertificates",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListSslCertificatesRequest,
      Google.Cloud.Compute.V1.SslCertificateAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteSslCertificateRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetSslCertificateRequest,
      Google.Cloud.Compute.V1.SslCertificate

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertSslCertificateRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListSslCertificatesRequest,
      Google.Cloud.Compute.V1.SslCertificateList
end

defmodule Google.Cloud.Compute.V1.SslCertificates.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.SslCertificates.Service
end

defmodule Google.Cloud.Compute.V1.SslPolicies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.SslPolicies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete, Google.Cloud.Compute.V1.DeleteSslPolicyRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetSslPolicyRequest, Google.Cloud.Compute.V1.SslPolicy

  rpc :Insert, Google.Cloud.Compute.V1.InsertSslPolicyRequest, Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListSslPoliciesRequest,
      Google.Cloud.Compute.V1.SslPoliciesList

  rpc :ListAvailableFeatures,
      Google.Cloud.Compute.V1.ListAvailableFeaturesSslPoliciesRequest,
      Google.Cloud.Compute.V1.SslPoliciesListAvailableFeaturesResponse

  rpc :Patch, Google.Cloud.Compute.V1.PatchSslPolicyRequest, Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.SslPolicies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.SslPolicies.Service
end

defmodule Google.Cloud.Compute.V1.Subnetworks.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.Subnetworks",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListSubnetworksRequest,
      Google.Cloud.Compute.V1.SubnetworkAggregatedList

  rpc :Delete, Google.Cloud.Compute.V1.DeleteSubnetworkRequest, Google.Cloud.Compute.V1.Operation

  rpc :ExpandIpCidrRange,
      Google.Cloud.Compute.V1.ExpandIpCidrRangeSubnetworkRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetSubnetworkRequest, Google.Cloud.Compute.V1.Subnetwork

  rpc :GetIamPolicy,
      Google.Cloud.Compute.V1.GetIamPolicySubnetworkRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :Insert, Google.Cloud.Compute.V1.InsertSubnetworkRequest, Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListSubnetworksRequest,
      Google.Cloud.Compute.V1.SubnetworkList

  rpc :ListUsable,
      Google.Cloud.Compute.V1.ListUsableSubnetworksRequest,
      Google.Cloud.Compute.V1.UsableSubnetworksAggregatedList

  rpc :Patch, Google.Cloud.Compute.V1.PatchSubnetworkRequest, Google.Cloud.Compute.V1.Operation

  rpc :SetIamPolicy,
      Google.Cloud.Compute.V1.SetIamPolicySubnetworkRequest,
      Google.Cloud.Compute.V1.Policy

  rpc :SetPrivateIpGoogleAccess,
      Google.Cloud.Compute.V1.SetPrivateIpGoogleAccessSubnetworkRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsSubnetworkRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.Subnetworks.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Subnetworks.Service
end

defmodule Google.Cloud.Compute.V1.TargetGrpcProxies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.TargetGrpcProxies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteTargetGrpcProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetTargetGrpcProxyRequest,
      Google.Cloud.Compute.V1.TargetGrpcProxy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertTargetGrpcProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListTargetGrpcProxiesRequest,
      Google.Cloud.Compute.V1.TargetGrpcProxyList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchTargetGrpcProxyRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.TargetGrpcProxies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.TargetGrpcProxies.Service
end

defmodule Google.Cloud.Compute.V1.TargetHttpProxies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.TargetHttpProxies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListTargetHttpProxiesRequest,
      Google.Cloud.Compute.V1.TargetHttpProxyAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteTargetHttpProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetTargetHttpProxyRequest,
      Google.Cloud.Compute.V1.TargetHttpProxy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertTargetHttpProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListTargetHttpProxiesRequest,
      Google.Cloud.Compute.V1.TargetHttpProxyList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchTargetHttpProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetUrlMap,
      Google.Cloud.Compute.V1.SetUrlMapTargetHttpProxyRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.TargetHttpProxies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.TargetHttpProxies.Service
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.TargetHttpsProxies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListTargetHttpsProxiesRequest,
      Google.Cloud.Compute.V1.TargetHttpsProxyAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.TargetHttpsProxy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListTargetHttpsProxiesRequest,
      Google.Cloud.Compute.V1.TargetHttpsProxyList

  rpc :Patch,
      Google.Cloud.Compute.V1.PatchTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetCertificateMap,
      Google.Cloud.Compute.V1.SetCertificateMapTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetQuicOverride,
      Google.Cloud.Compute.V1.SetQuicOverrideTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetSslCertificates,
      Google.Cloud.Compute.V1.SetSslCertificatesTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetSslPolicy,
      Google.Cloud.Compute.V1.SetSslPolicyTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetUrlMap,
      Google.Cloud.Compute.V1.SetUrlMapTargetHttpsProxyRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.TargetHttpsProxies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.TargetHttpsProxies.Service
end

defmodule Google.Cloud.Compute.V1.TargetInstances.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.TargetInstances",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListTargetInstancesRequest,
      Google.Cloud.Compute.V1.TargetInstanceAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteTargetInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetTargetInstanceRequest,
      Google.Cloud.Compute.V1.TargetInstance

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertTargetInstanceRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListTargetInstancesRequest,
      Google.Cloud.Compute.V1.TargetInstanceList
end

defmodule Google.Cloud.Compute.V1.TargetInstances.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.TargetInstances.Service
end

defmodule Google.Cloud.Compute.V1.TargetPools.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.TargetPools",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AddHealthCheck,
      Google.Cloud.Compute.V1.AddHealthCheckTargetPoolRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AddInstance,
      Google.Cloud.Compute.V1.AddInstanceTargetPoolRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListTargetPoolsRequest,
      Google.Cloud.Compute.V1.TargetPoolAggregatedList

  rpc :Delete, Google.Cloud.Compute.V1.DeleteTargetPoolRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetTargetPoolRequest, Google.Cloud.Compute.V1.TargetPool

  rpc :GetHealth,
      Google.Cloud.Compute.V1.GetHealthTargetPoolRequest,
      Google.Cloud.Compute.V1.TargetPoolInstanceHealth

  rpc :Insert, Google.Cloud.Compute.V1.InsertTargetPoolRequest, Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListTargetPoolsRequest,
      Google.Cloud.Compute.V1.TargetPoolList

  rpc :RemoveHealthCheck,
      Google.Cloud.Compute.V1.RemoveHealthCheckTargetPoolRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :RemoveInstance,
      Google.Cloud.Compute.V1.RemoveInstanceTargetPoolRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetBackup,
      Google.Cloud.Compute.V1.SetBackupTargetPoolRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.TargetPools.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.TargetPools.Service
end

defmodule Google.Cloud.Compute.V1.TargetSslProxies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.TargetSslProxies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteTargetSslProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetTargetSslProxyRequest,
      Google.Cloud.Compute.V1.TargetSslProxy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertTargetSslProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListTargetSslProxiesRequest,
      Google.Cloud.Compute.V1.TargetSslProxyList

  rpc :SetBackendService,
      Google.Cloud.Compute.V1.SetBackendServiceTargetSslProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetCertificateMap,
      Google.Cloud.Compute.V1.SetCertificateMapTargetSslProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetProxyHeader,
      Google.Cloud.Compute.V1.SetProxyHeaderTargetSslProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetSslCertificates,
      Google.Cloud.Compute.V1.SetSslCertificatesTargetSslProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetSslPolicy,
      Google.Cloud.Compute.V1.SetSslPolicyTargetSslProxyRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.TargetSslProxies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.TargetSslProxies.Service
end

defmodule Google.Cloud.Compute.V1.TargetTcpProxies.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.TargetTcpProxies",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteTargetTcpProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetTargetTcpProxyRequest,
      Google.Cloud.Compute.V1.TargetTcpProxy

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertTargetTcpProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListTargetTcpProxiesRequest,
      Google.Cloud.Compute.V1.TargetTcpProxyList

  rpc :SetBackendService,
      Google.Cloud.Compute.V1.SetBackendServiceTargetTcpProxyRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :SetProxyHeader,
      Google.Cloud.Compute.V1.SetProxyHeaderTargetTcpProxyRequest,
      Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.TargetTcpProxies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.TargetTcpProxies.Service
end

defmodule Google.Cloud.Compute.V1.TargetVpnGateways.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.TargetVpnGateways",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListTargetVpnGatewaysRequest,
      Google.Cloud.Compute.V1.TargetVpnGatewayAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteTargetVpnGatewayRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :Get,
      Google.Cloud.Compute.V1.GetTargetVpnGatewayRequest,
      Google.Cloud.Compute.V1.TargetVpnGateway

  rpc :Insert,
      Google.Cloud.Compute.V1.InsertTargetVpnGatewayRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListTargetVpnGatewaysRequest,
      Google.Cloud.Compute.V1.TargetVpnGatewayList
end

defmodule Google.Cloud.Compute.V1.TargetVpnGateways.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.TargetVpnGateways.Service
end

defmodule Google.Cloud.Compute.V1.UrlMaps.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.UrlMaps", protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListUrlMapsRequest,
      Google.Cloud.Compute.V1.UrlMapsAggregatedList

  rpc :Delete, Google.Cloud.Compute.V1.DeleteUrlMapRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetUrlMapRequest, Google.Cloud.Compute.V1.UrlMap

  rpc :Insert, Google.Cloud.Compute.V1.InsertUrlMapRequest, Google.Cloud.Compute.V1.Operation

  rpc :InvalidateCache,
      Google.Cloud.Compute.V1.InvalidateCacheUrlMapRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListUrlMapsRequest, Google.Cloud.Compute.V1.UrlMapList

  rpc :Patch, Google.Cloud.Compute.V1.PatchUrlMapRequest, Google.Cloud.Compute.V1.Operation

  rpc :Update, Google.Cloud.Compute.V1.UpdateUrlMapRequest, Google.Cloud.Compute.V1.Operation

  rpc :Validate,
      Google.Cloud.Compute.V1.ValidateUrlMapRequest,
      Google.Cloud.Compute.V1.UrlMapsValidateResponse
end

defmodule Google.Cloud.Compute.V1.UrlMaps.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.UrlMaps.Service
end

defmodule Google.Cloud.Compute.V1.VpnGateways.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.VpnGateways",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListVpnGatewaysRequest,
      Google.Cloud.Compute.V1.VpnGatewayAggregatedList

  rpc :Delete, Google.Cloud.Compute.V1.DeleteVpnGatewayRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetVpnGatewayRequest, Google.Cloud.Compute.V1.VpnGateway

  rpc :GetStatus,
      Google.Cloud.Compute.V1.GetStatusVpnGatewayRequest,
      Google.Cloud.Compute.V1.VpnGatewaysGetStatusResponse

  rpc :Insert, Google.Cloud.Compute.V1.InsertVpnGatewayRequest, Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListVpnGatewaysRequest,
      Google.Cloud.Compute.V1.VpnGatewayList

  rpc :SetLabels,
      Google.Cloud.Compute.V1.SetLabelsVpnGatewayRequest,
      Google.Cloud.Compute.V1.Operation

  rpc :TestIamPermissions,
      Google.Cloud.Compute.V1.TestIamPermissionsVpnGatewayRequest,
      Google.Cloud.Compute.V1.TestPermissionsResponse
end

defmodule Google.Cloud.Compute.V1.VpnGateways.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.VpnGateways.Service
end

defmodule Google.Cloud.Compute.V1.VpnTunnels.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.VpnTunnels",
    protoc_gen_elixir_version: "0.11.0"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1.AggregatedListVpnTunnelsRequest,
      Google.Cloud.Compute.V1.VpnTunnelAggregatedList

  rpc :Delete, Google.Cloud.Compute.V1.DeleteVpnTunnelRequest, Google.Cloud.Compute.V1.Operation

  rpc :Get, Google.Cloud.Compute.V1.GetVpnTunnelRequest, Google.Cloud.Compute.V1.VpnTunnel

  rpc :Insert, Google.Cloud.Compute.V1.InsertVpnTunnelRequest, Google.Cloud.Compute.V1.Operation

  rpc :List, Google.Cloud.Compute.V1.ListVpnTunnelsRequest, Google.Cloud.Compute.V1.VpnTunnelList
end

defmodule Google.Cloud.Compute.V1.VpnTunnels.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.VpnTunnels.Service
end

defmodule Google.Cloud.Compute.V1.ZoneOperations.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.compute.v1.ZoneOperations",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Delete,
      Google.Cloud.Compute.V1.DeleteZoneOperationRequest,
      Google.Cloud.Compute.V1.DeleteZoneOperationResponse

  rpc :Get, Google.Cloud.Compute.V1.GetZoneOperationRequest, Google.Cloud.Compute.V1.Operation

  rpc :List,
      Google.Cloud.Compute.V1.ListZoneOperationsRequest,
      Google.Cloud.Compute.V1.OperationList

  rpc :Wait, Google.Cloud.Compute.V1.WaitZoneOperationRequest, Google.Cloud.Compute.V1.Operation
end

defmodule Google.Cloud.Compute.V1.ZoneOperations.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.ZoneOperations.Service
end

defmodule Google.Cloud.Compute.V1.Zones.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.compute.v1.Zones", protoc_gen_elixir_version: "0.11.0"

  rpc :Get, Google.Cloud.Compute.V1.GetZoneRequest, Google.Cloud.Compute.V1.Zone

  rpc :List, Google.Cloud.Compute.V1.ListZonesRequest, Google.Cloud.Compute.V1.ZoneList
end

defmodule Google.Cloud.Compute.V1.Zones.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Compute.V1.Zones.Service
end