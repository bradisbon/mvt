import Foundation

let args = CommandLine.arguments.dropFirst()

if (args.count == 0) {
    print("usage: mvt source_file")
}
else {
    let fm = FileManager()
        for arg in args{
            let url = URL(fileURLWithPath: arg)
                var resultingURL: NSURL?
                do {
                    try fm.trashItem(at: url, resultingItemURL: &resultingURL)
                } catch {
                    print("mvt: ",arg,": ", "\(error.localizedDescription)", separator: "")
                }
        }

}
