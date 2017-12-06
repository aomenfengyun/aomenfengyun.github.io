//
//  HCPDataDownloader.m
//
//  Created by Nikolay Demyankov on 04.11.16.
//

#import "HCPDataDownloader.h"

@implementation HCPDataDownloader

- (void) downloadDataFromUrl:(NSURL*) url requestHeaders:(NSDictionary *)headers completionBlock:(HCPDataDownloadCompletionBlock) block {
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    configuration.requestCachePolicy = NSURLRequestReloadIgnoringLocalCacheData;
    if (headers) {
        [configuration setHTTPAdditionalHeaders:headers];
    }
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
	
    NSDate* date = [NSDate dateWithTimeIntervalSinceNow:0];//获取当前时间0秒后的时间
    NSTimeInterval time=[date timeIntervalSince1970]*1000;// *1000 是精确到毫秒，不乘就是精确到秒
    NSString *timeString = [NSString stringWithFormat:@"%.0f", time];
	NSString *str1 = [url absoluteString];
    str1 = [NSString stringWithFormat:@"%@?t=%@", str1, timeString];
    NSURL *turl = [NSURL URLWithString:str1];
    
    NSURLSessionDataTask* dowloadTask = [session dataTaskWithURL:turl completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        block(data, error);
    }];
    
    [dowloadTask resume];
}

@end
