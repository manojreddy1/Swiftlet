//
//  VSCore.swift
//  TRUX
//
//  Created by Manoj on 09/06/16.
//  Copyright © 2016 moc.vaayoo. All rights reserved.
//

import UIKit

class VSCore: NSObject {

    func getColor(_ hexString: String, alpha:CGFloat? = 1.0) -> UIColor
    {
        
        // Convert hex string to an integer
        let hexint = Int(self.intFromHexString(hexString))
        let red = CGFloat((hexint & 0xff0000) >> 16) / 255.0
        let green = CGFloat((hexint & 0xff00) >> 8) / 255.0
        let blue = CGFloat((hexint & 0xff) >> 0) / 255.0
        let alpha = alpha!
        
        // Create color object, specifying alpha as well
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        return color
    }
    
    func intFromHexString(_ hexStr: String) -> UInt32 {
        var hexInt: UInt32 = 0
        // Create scanner
        let scanner: Scanner = Scanner(string: hexStr)
        // Tell scanner to skip the # character
        scanner.charactersToBeSkipped = CharacterSet(charactersIn: "#")
        // Scan hex value
        scanner.scanHexInt32(&hexInt)
        return hexInt
    }
    func getImagesFolder() -> NSString
    {
        let documentFolderPath = NSHomeDirectory() + "Documents" as NSString
        let fileManager = FileManager.default
        let imagesFolderPath = documentFolderPath.appendingPathComponent("Images") as NSString
        
        //Check if the images folder is already exist?  if not create it!
        var isDir: ObjCBool = false
        
        //if (fileManager.fileExists(atPath: imagesFolderPath as String, isDirectory: &isDir) && isDir) == false
        if fileManager.fileExists(atPath: imagesFolderPath as String, isDirectory:&isDir)
        {
            if !isDir.boolValue
            {
                do
                {
                    try FileManager.default.createDirectory(atPath: imagesFolderPath as String, withIntermediateDirectories: true, attributes: nil)
                }
                catch
                {
                    let fetchError = error as NSError
                    print(fetchError)
                }
            }
            
        }
        return imagesFolderPath
    }
    func getUniqueFileName() -> NSString
    {
        let time = Date()
        let df = DateFormatter.init()
        df.dateFormat = "MMddyyyyhhmmssSSS"
        let timeString = df.string(from: time)
        let fileName = NSString.localizedStringWithFormat(timeString as NSString, no_argument)
        print(fileName)
        
        return fileName
    }
    /*
     +(NSString *)getImagesFolder
     {
     NSString *documentFolderPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
     NSFileManager *fileManager = [NSFileManager defaultManager];
     NSString *imagesFolderPath = [documentFolderPath stringByAppendingPathComponent:@"Images"];
     
     //Check if the images folder already exists, if not, create it!!!
     BOOL isDir;
     NSError *error;
     
     if (([fileManager fileExistsAtPath:imagesFolderPath isDirectory:&isDir] && isDir) == FALSE)
     {
     //            [[NSFileManager defaultManager] createDirectoryAtPath:videosFolderPath attributes:nil];
     [[NSFileManager defaultManager] createDirectoryAtPath:imagesFolderPath withIntermediateDirectories:YES attributes:nil error:&error];
     }
     
     return imagesFolderPath;
     }
     
     
     
     
     
     +(NSString *) getUniqueFileName
     {
     NSDate *time = [NSDate date];
     NSDateFormatter* df = [NSDateFormatter new];
     [df setDateFormat:@"MMddyyyyhhmmssSSS"];
     NSString *timeString = [df stringFromDate:time];
     NSString *fileName = [NSString stringWithFormat:@"%@", timeString ];
     return  fileName ;
     }
     
     */
    
}
