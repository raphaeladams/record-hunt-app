# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `shopify_metrics` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module ShopifyMetrics
  extend(::ShopifyMetrics::Tags)

  class << self
    def instrument(adapter, *err_classes, measure_latency:); end
    def instrument_clients; end
    def logger; end
    def logger=(logger); end
  end
end

module ShopifyMetrics::Jobs
end

class ShopifyMetrics::MemInfo
  class << self
    def all; end
    def pss; end
    def rss; end

    private

    def parse(rollup); end
    def smaps_rollup; end
  end
end

ShopifyMetrics::MemInfo::RSS_STATSD_KEY = T.let(T.unsafe(nil), String)

ShopifyMetrics::MemInfo::SMAPS_ROLLUP_CACHE_TTL = T.let(T.unsafe(nil), ActiveSupport::Duration)

module ShopifyMetrics::Middlewares
end

class ShopifyMetrics::Middlewares::RaindropsMiddleware
  def initialize(app); end

  def call(env); end

  private

  def capture_metrics; end
end

ShopifyMetrics::Middlewares::RaindropsMiddleware::RATE = T.let(T.unsafe(nil), ActiveSupport::Duration)

class ShopifyMetrics::Middlewares::RequestMetrics
  def initialize(app); end

  def call(env); end

  private

  def add_headers(env, headers); end
  def calculate_request_queuing_time(header_value); end
  def parse_time_header(header_value); end
  def response_tags(env, response); end
  def server_timing_header(env); end
  def statsd(metric_key, time, tags); end

  class << self
    def request_content_length_metric; end
    def request_content_length_metric=(_); end
    def request_edge_latency_time_metric; end
    def request_edge_latency_time_metric=(_); end
    def request_queuing_time_metric; end
    def request_queuing_time_metric=(_); end
    def request_time_metric; end
    def request_time_metric=(_); end
  end
end

ShopifyMetrics::Middlewares::RequestMetrics::EDGE_LATENCY_TIME = T.let(T.unsafe(nil), String)

ShopifyMetrics::Middlewares::RequestMetrics::MIDDLEWARE_START = T.let(T.unsafe(nil), String)

ShopifyMetrics::Middlewares::RequestMetrics::REQUEST_QUEUING_CUT_OFF = T.let(T.unsafe(nil), Time)

ShopifyMetrics::Middlewares::RequestMetrics::REQUEST_QUEUING_TIME = T.let(T.unsafe(nil), String)

ShopifyMetrics::Middlewares::RequestMetrics::REQUEST_START_EDGE_HEADER = T.let(T.unsafe(nil), String)

ShopifyMetrics::Middlewares::RequestMetrics::REQUEST_START_HEADER = T.let(T.unsafe(nil), String)

ShopifyMetrics::Middlewares::RequestMetrics::REQUEST_TIME = T.let(T.unsafe(nil), String)

ShopifyMetrics::Middlewares::RequestMetrics::SERVER_TIMING_RESPONSE_HEADER = T.let(T.unsafe(nil), String)

class ShopifyMetrics::Middlewares::SidekiqMetrics
  def call(_worker, job, _queue, _redis = T.unsafe(nil)); end

  private

  def milliseconds_since_enqueued(job); end
end

class ShopifyMetrics::PumaStats
  def initialize(stats); end

  def booted_workers; end
  def clustered?; end
  def desired_workers; end
  def workers; end
end

ShopifyMetrics::PumaStats::WORKER_KEYS = T.let(T.unsafe(nil), Array)

class ShopifyMetrics::PumaStats::WorkerStatus < ::Struct
  def backlog; end
  def backlog=(_); end
  def max_threads; end
  def max_threads=(_); end
  def name; end
  def name=(_); end
  def pool_capacity; end
  def pool_capacity=(_); end
  def running; end
  def running=(_); end

  class << self
    def [](*_); end
    def inspect; end
    def members; end
    def new(*_); end
  end
end

class ShopifyMetrics::Railtie < ::Rails::Railtie
  def parent_class; end
end

module ShopifyMetrics::RaindropsMonitor
  extend(::ShopifyMetrics::RaindropsMonitor)

  def capture_metrics(dump_to_file: T.unsafe(nil)); end
  def current_utilization; end
  def init(interval: T.unsafe(nil)); end
  def running?; end
  def stats_file_path; end
  def stats_file_path=(_); end
  def stats_file_ttl; end
  def stats_file_ttl=(_); end
  def total_workers; end
  def total_workers=(_); end
  def update_stats_interval; end
  def update_stats_interval=(_); end

  private

  def addr; end
  def calculate_utilization(active, queued); end
  def read_stats_from_file; end
  def spawn_raindrops_thread(interval); end
  def write_stats_to_file(stats); end
end

ShopifyMetrics::RaindropsMonitor::EXTERNAL_ENCODING = T.let(T.unsafe(nil), Encoding)

module ShopifyMetrics::Tags
  def add_application_tags(tags); end
  def application_tags; end
end

ShopifyMetrics::VERSION = T.let(T.unsafe(nil), String)
