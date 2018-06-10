cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
   {
        "file": "plugins/cordova-plugin-whitelist/whitelist.js",
        "id": "cordova-plugin-whitelist.whitelist",
        "runs": true
    },
    {
        "file": "plugins/cordova-plugin-file/www/DirectoryEntry.js",
        "id": "cordova-plugin-file.DirectoryEntry",
        "clobbers": [
            "window.DirectoryEntry"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/DirectoryReader.js",
        "id": "cordova-plugin-file.DirectoryReader",
        "clobbers": [
            "window.DirectoryReader"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/Entry.js",
        "id": "cordova-plugin-file.Entry",
        "clobbers": [
            "window.Entry"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/File.js",
        "id": "cordova-plugin-file.File",
        "clobbers": [
            "window.File"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/FileEntry.js",
        "id": "cordova-plugin-file.FileEntry",
        "clobbers": [
            "window.FileEntry"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/FileError.js",
        "id": "cordova-plugin-file.FileError",
        "clobbers": [
            "window.FileError"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/FileReader.js",
        "id": "cordova-plugin-file.FileReader",
        "clobbers": [
            "window.FileReader"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/FileSystem.js",
        "id": "cordova-plugin-file.FileSystem",
        "clobbers": [
            "window.FileSystem"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/FileUploadOptions.js",
        "id": "cordova-plugin-file.FileUploadOptions",
        "clobbers": [
            "window.FileUploadOptions"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/FileUploadResult.js",
        "id": "cordova-plugin-file.FileUploadResult",
        "clobbers": [
            "window.FileUploadResult"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/FileWriter.js",
        "id": "cordova-plugin-file.FileWriter",
        "clobbers": [
            "window.FileWriter"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/Flags.js",
        "id": "cordova-plugin-file.Flags",
        "clobbers": [
            "window.Flags"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/LocalFileSystem.js",
        "id": "cordova-plugin-file.LocalFileSystem",
        "clobbers": [
            "window.LocalFileSystem"
        ],
        "merges": [
            "window"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/Metadata.js",
        "id": "cordova-plugin-file.Metadata",
        "clobbers": [
            "window.Metadata"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/ProgressEvent.js",
        "id": "cordova-plugin-file.ProgressEvent",
        "clobbers": [
            "window.ProgressEvent"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/fileSystems.js",
        "id": "cordova-plugin-file.fileSystems"
    },
    {
        "file": "plugins/cordova-plugin-file/www/requestFileSystem.js",
        "id": "cordova-plugin-file.requestFileSystem",
        "clobbers": [
            "window.requestFileSystem"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/resolveLocalFileSystemURI.js",
        "id": "cordova-plugin-file.resolveLocalFileSystemURI",
        "merges": [
            "window"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/browser/isChrome.js",
        "id": "cordova-plugin-file.isChrome",
        "runs": true
    },
    {
        "file": "plugins/cordova-plugin-file/www/android/FileSystem.js",
        "id": "cordova-plugin-file.androidFileSystem",
        "merges": [
            "FileSystem"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file/www/fileSystems-roots.js",
        "id": "cordova-plugin-file.fileSystems-roots",
        "runs": true
    },
    {
        "file": "plugins/cordova-plugin-file/www/fileSystemPaths.js",
        "id": "cordova-plugin-file.fileSystemPaths",
        "merges": [
            "cordova"
        ],
        "runs": true
    },
    {
        "file": "plugins/cordova-plugin-file-transfer/www/FileTransferError.js",
        "id": "cordova-plugin-file-transfer.FileTransferError",
        "clobbers": [
            "window.FileTransferError"
        ]
    },
    {
        "file": "plugins/cordova-plugin-file-transfer/www/FileTransfer.js",
        "id": "cordova-plugin-file-transfer.FileTransfer",
        "clobbers": [
            "window.FileTransfer"
        ]
    },
    {
        "file": "plugins/cordova-plugin-media-capture/www/CaptureAudioOptions.js",
        "id": "cordova-plugin-media-capture.CaptureAudioOptions",
        "clobbers": [
            "CaptureAudioOptions"
        ]
    },
    {
        "file": "plugins/cordova-plugin-media-capture/www/CaptureImageOptions.js",
        "id": "cordova-plugin-media-capture.CaptureImageOptions",
        "clobbers": [
            "CaptureImageOptions"
        ]
    },
    {
        "file": "plugins/cordova-plugin-media-capture/www/CaptureVideoOptions.js",
        "id": "cordova-plugin-media-capture.CaptureVideoOptions",
        "clobbers": [
            "CaptureVideoOptions"
        ]
    },
    {
        "file": "plugins/cordova-plugin-media-capture/www/CaptureError.js",
        "id": "cordova-plugin-media-capture.CaptureError",
        "clobbers": [
            "CaptureError"
        ]
    },
    {
        "file": "plugins/cordova-plugin-media-capture/www/MediaFileData.js",
        "id": "cordova-plugin-media-capture.MediaFileData",
        "clobbers": [
            "MediaFileData"
        ]
    },
    {
        "file": "plugins/cordova-plugin-media-capture/www/MediaFile.js",
        "id": "cordova-plugin-media-capture.MediaFile",
        "clobbers": [
            "MediaFile"
        ]
    },
    {
        "file": "plugins/cordova-plugin-media-capture/www/capture.js",
        "id": "cordova-plugin-media-capture.capture",
        "clobbers": [
            "navigator.device.capture"
        ]
    },
         {
             "file": "plugins/cordova-plugin-camera/www/CameraConstants.js",
             "id": "cordova-plugin-camera.Camera",
             "clobbers": [
                 "Camera"
             ]
         },
         {
             "file": "plugins/cordova-plugin-camera/www/CameraPopoverOptions.js",
             "id": "cordova-plugin-camera.CameraPopoverOptions",
             "clobbers": [
                 "CameraPopoverOptions"
             ]
         },
         {
             "file": "plugins/cordova-plugin-camera/www/Camera.js",
             "id": "cordova-plugin-camera.camera",
             "clobbers": [
                 "navigator.camera"
             ]
         },
         {
             "file": "plugins/cordova-plugin-camera/www/CameraPopoverHandle.js",
             "id": "cordova-plugin-camera.CameraPopoverHandle",
             "clobbers": [
                 "CameraPopoverHandle"
             ]
         },
         {
                 "file": "plugins/cordova-plugin-video-editor/www/VideoEditor.js",
                 "id": "cordova-plugin-video-editor.VideoEditor",
                 "clobbers": [
                     "VideoEditor"
                 ]
         },
         {
                 "file": "plugins/cordova-plugin-video-editor/www/VideoEditorOptions.js",
                 "id": "cordova-plugin-video-editor.VideoEditorOptions",
                 "clobbers": [
                     "VideoEditorOptions"
                 ]
         },
         {
                 "file": "plugins/cordova-plugin-image-picker/www/imagepicker.js",
                 "id": "cordova-plugin-image-picker.ImagePicker",
                 "clobbers": [
                     "plugins.imagePicker"
                 ]
         },
         {
                 "id": "cordova-plugin-globalization.GlobalizationError",
                 "file": "plugins/cordova-plugin-globalization/www/GlobalizationError.js",
                 "pluginId": "cordova-plugin-globalization",
                 "clobbers": [
                     "window.GlobalizationError"
                 ]
          },
          {
                 "id": "cordova-plugin-globalization.globalization",
                 "file": "plugins/cordova-plugin-globalization/www/globalization.js",
                 "pluginId": "cordova-plugin-globalization",
                 "clobbers": [
                     "navigator.globalization"
                 ]
          },
          {
                    "id": "com.hutchind.cordova.plugins.streamingmedia.StreamingMedia",
                    "file": "plugins/com.hutchind.cordova.plugins.streamingmedia/www/StreamingMedia.js",
                    "pluginId": "com.hutchind.cordova.plugins.streamingmedia",
                    "clobbers": [
                        "streamingMedia"
                    ]
                },
                {
                    "id": "cordova-plugin-contacts.contacts",
                    "file": "plugins/cordova-plugin-contacts/www/contacts.js",
                    "pluginId": "cordova-plugin-contacts",
                    "clobbers": [
                        "navigator.contacts"
                    ]
                },
                {
                    "id": "cordova-plugin-contacts.Contact",
                    "file": "plugins/cordova-plugin-contacts/www/Contact.js",
                    "pluginId": "cordova-plugin-contacts",
                    "clobbers": [
                        "Contact"
                    ]
                },
                {
                    "id": "cordova-plugin-contacts.convertUtils",
                    "file": "plugins/cordova-plugin-contacts/www/convertUtils.js",
                    "pluginId": "cordova-plugin-contacts"
                },
                {
                    "id": "cordova-plugin-contacts.ContactAddress",
                    "file": "plugins/cordova-plugin-contacts/www/ContactAddress.js",
                    "pluginId": "cordova-plugin-contacts",
                    "clobbers": [
                        "ContactAddress"
                    ]
                },
                {
                    "id": "cordova-plugin-contacts.ContactError",
                    "file": "plugins/cordova-plugin-contacts/www/ContactError.js",
                    "pluginId": "cordova-plugin-contacts",
                    "clobbers": [
                        "ContactError"
                    ]
                },
                {
                    "id": "cordova-plugin-contacts.ContactField",
                    "file": "plugins/cordova-plugin-contacts/www/ContactField.js",
                    "pluginId": "cordova-plugin-contacts",
                    "clobbers": [
                        "ContactField"
                    ]
                },
                {
                    "id": "cordova-plugin-contacts.ContactFindOptions",
                    "file": "plugins/cordova-plugin-contacts/www/ContactFindOptions.js",
                    "pluginId": "cordova-plugin-contacts",
                    "clobbers": [
                        "ContactFindOptions"
                    ]
                },
                {
                    "id": "cordova-plugin-contacts.ContactName",
                    "file": "plugins/cordova-plugin-contacts/www/ContactName.js",
                    "pluginId": "cordova-plugin-contacts",
                    "clobbers": [
                        "ContactName"
                    ]
                },
                {
                    "id": "cordova-plugin-contacts.ContactOrganization",
                    "file": "plugins/cordova-plugin-contacts/www/ContactOrganization.js",
                    "pluginId": "cordova-plugin-contacts",
                    "clobbers": [
                        "ContactOrganization"
                    ]
                },
                {
                    "id": "cordova-plugin-contacts.ContactFieldType",
                    "file": "plugins/cordova-plugin-contacts/www/ContactFieldType.js",
                    "pluginId": "cordova-plugin-contacts",
                    "merges": [
                        ""
                    ]
                },
				{
        "id": "cordova-plugin-keyboard.keyboard",
        "file": "plugins/cordova-plugin-keyboard/www/keyboard.js",
        "pluginId": "cordova-plugin-keyboard",
        "clobbers": [
            "window.Keyboard"
        ]
    },{
              "id": "cordova-sqlite-storage.SQLitePlugin",
              "file": "plugins/cordova-sqlite-storage/www/SQLitePlugin.js",
              "pluginId": "cordova-sqlite-storage",
              "clobbers": [
                  "SQLitePlugin"
              ]
          },
               {
                   "id": "cordova-plugin-media.MediaError",
                   "file": "plugins/cordova-plugin-media/www/MediaError.js",
                   "pluginId": "cordova-plugin-media",
                   "clobbers": [
                       "window.MediaError"
                   ]
               },
               {
                   "id": "cordova-plugin-media.Media",
                   "file": "plugins/cordova-plugin-media/www/Media.js",
                   "pluginId": "cordova-plugin-media",
                   "clobbers": [
                       "window.Media"
                   ]
               },  {
                                         "file": "plugins/ionic-plugin-keyboard/www/android/keyboard.js",
                                         "id": "ionic-plugin-keyboard.keyboard",
                                         "clobbers": [
                                             "cordova.plugins.Keyboard"
                                         ],
                                         "runs": true
                                     }
];
module.exports.metadata = 
// TOP OF METADATA
{
    "cordova-plugin-whitelist": "1.2.1",
    "cordova-plugin-file": "4.1.1",
    "cordova-plugin-file-transfer": "1.5.0",
    "cordova-plugin-media-capture": "1.2.0",
    "cordova-plugin-camera": "2.1.0",
    "cordova-plugin-video-editor": "1.1.2",
    "cordova-plugin-image-picker": "1.1.1",
    "cordova-plugin-globalization": "1.0.5",
    "com.hutchind.cordova.plugins.streamingmedia": "0.1.4",
    "cordova-plugin-compat": "1.1.0",
    "cordova-plugin-contacts": "2.2.1",
	"cordova-plugin-keyboard": "1.1.4",
     "cordova-sqlite-storage": "2.0.2",
     "cordova-plugin-media": "2.4.1"
};
// BOTTOM OF METADATA
});