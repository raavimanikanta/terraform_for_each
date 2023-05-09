variable "dashboards_details" {
  type = map(object({
    dashboardName = string
    PageName      = string
    widget1title  = string
    widget2title  = string
    widget3title  = string
    widget1Nrql   =string
    widget2Nrql   =string
    widget3Nrql   =string
    
  }))
  # type=map(any)

}







# variable "brand_ping_and_synthetic_details" {
#   type=list(any)
#   default=[
    
#         {dashboardName = "Brand-microservice-ping-via-terraform", pageName = "Brand-microservice(ping)", 
#          widget1title = "Brand Ping Success in last 1 hour", widget1Nrql ="FROM SyntheticCheck SELECT percentage(count(*), WHERE result = 'SUCCESS') AS 'Success Rate' WHERE monitorName = 'Brand Microservice Ping' SINCE 1 hour ago",
#          widget2title ="Brand Ping GB ingested of current month",widget2Nrql="SELECT bytecountestimate() / 10e8 as 'Ping GB ingested Estimate' FROM SyntheticCheck, SyntheticRequest, SyntheticsPrivateLocationStatus, SyntheticPrivateMinion SINCE this month where monitorName = 'Brand Microservice Ping'",
#          widget3title ="Latest 2 Brand ping Checks",widget3Nrql="SELECT error, result FROM SyntheticCheck WHERE monitorName = 'Brand Microservice Ping' SINCE 1 hour ago LIMIT 2",
#         #  widget4title ="Brand Ping Number of Checks by Status",widget4Nrql="SELECT count(*) FROM SyntheticCheck FACET result WHERE monitorName = 'Brand Microservice Ping' since 1 hour ago",
#         #  widget5title ="Brand Common Error Ping Messages",widget5Nrql="FROM SyntheticCheck SELECT count(result) FACET error, result WHERE monitorName = 'Brand Microservice Ping' SINCE 1 day ago",
#         # widget6title ="Brand Ping Total Size (KB) over time (Request & Response)",widget6Nrql="select average(totalRequestHeaderSize + totalRequestBodySize) / 1000 as 'Request Size (KB)', average(totalResponseBodySize) / 1000 as 'Response Size (KB)' from SyntheticCheck WHERE monitorName = 'Brand Microservice Ping' TIMESERIES",
#         # widget7title ="Brand Ping Request/response times",widget7Nrql="SELECT average(durationSend) AS 'Send', average(durationWait) AS 'Wait', average(durationReceive) AS 'Receive' FROM SyntheticRequest WHERE monitorName = 'Brand Microservice Ping' TIMESERIES 1 minutes",
#      }, 
#         {dashboardName = "product-microservice-ping-via-terraform", pageName = "product-microservice(ping)", 
#                 widget1title = "Product Ping Success in last 1 hour", widget1Nrql ="FROM SyntheticCheck SELECT percentage(count(*), WHERE result = 'SUCCESS') AS 'Success Rate' WHERE monitorName = 'Product Microservice Ping' SINCE 1 hour ago",
#                 widget2title ="Product Ping GB ingested of current month",widget2Nrql="SELECT bytecountestimate() / 10e8 as 'Ping GB ingested Estimate' FROM SyntheticCheck, SyntheticRequest, SyntheticsPrivateLocationStatus, SyntheticPrivateMinion SINCE this month where monitorName = 'Product Microservice Ping'",
#                 widget3title ="Latest 2 Product ping Checks",widget3Nrql="SELECT error, result FROM SyntheticCheck WHERE monitorName = 'Product Microservice Ping' SINCE 1 hour ago LIMIT 2",
#                 # widget4title ="Product Ping Number of Checks by Status",widget4Nrql="SELECT count(*) FROM SyntheticCheck FACET result WHERE monitorName = 'Product Microservice Ping' since 1 hour ago",
#                 # widget5title ="Product Common Error Ping Messages",widget5Nrql="FROM SyntheticCheck SELECT count(result) FACET error, result WHERE monitorName = 'Product Microservice Ping' SINCE 1 day ago",
#                 # widget6title =" Ping Total Size (KB) over time (Request & Response)",widget6Nrql="select average(totalRequestHeaderSize + totalRequestBodySize) / 1000 as 'Request Size (KB)', average(totalResponseBodySize) / 1000 as 'Response Size (KB)' from SyntheticCheck WHERE monitorName = 'Product Microservice Ping' TIMESERIES",
#                 # widget7title ="Product Ping Request/response times",widget7Nrql="SELECT average(durationSend) AS 'Send', average(durationWait) AS 'Wait', average(durationReceive) AS 'Receive' FROM SyntheticRequest WHERE monitorName = 'Product Microservice Ping' TIMESERIES 1 minutes",
#         }, 


#  {dashboardName = "Cart-microservice-ping-via-terraform", pageName = "Cart-microservice(ping)", 
#          widget1title = "Cart Ping Success in last 1 hour", widget1Nrql ="FROM SyntheticCheck SELECT percentage(count(*), WHERE result = 'SUCCESS') AS 'Success Rate' WHERE monitorName = 'Cart Microservice Ping' SINCE 1 hour ago",
#          widget2title ="Cart Ping GB ingested of current month",widget2Nrql="SELECT bytecountestimate() / 10e8 as 'Ping GB ingested Estimate' FROM SyntheticCheck, SyntheticRequest, SyntheticsPrivateLocationStatus, SyntheticPrivateMinion SINCE this month where monitorName = 'Cart Microservice Ping'",
#          widget3title ="Latest 2 Cart ping Checks",widget3Nrql="SELECT error, result FROM SyntheticCheck WHERE monitorName = 'Cart Microservice Ping' SINCE 1 hour ago LIMIT 2",
#         #  widget4title ="Cart Common Error Ping Messages",widget4Nrql="FROM SyntheticCheck SELECT count(result) WHERE monitorName = 'Cart Microservice Ping' SINCE 1 day ago FACET error, result",
#         #  widget5title ="Cart Ping Number of Checks by Status",widget5Nrql="SELECT count(*) FROM SyntheticCheck FACET result WHERE monitorName = 'Cart Microservice Ping' since 1 hour ago",
#         #  widget6title ="Cart Ping Request/response times",widget6Nrql="SELECT average(durationSend) AS 'Send', average(durationWait) AS 'Wait', average(durationReceive) AS 'Receive' FROM SyntheticRequest WHERE monitorName = 'Cart Microservice Ping' TIMESERIES 1 minutes",
#         #  widget7title ="Cart Ping Total Size (KB) over time (Request & Response)",widget7Nrql="select average(totalRequestHeaderSize + totalRequestBodySize) / 1000 as 'Request Size (KB)', average(totalResponseBodySize) / 1000 as 'Response Size (KB)' from SyntheticCheck WHERE monitorName = 'Cart Microservice Ping' TIMESERIES",

# }, 
#   ]
# }