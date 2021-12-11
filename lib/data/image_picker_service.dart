import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final picker = ImagePicker();
  Future<XFile?> pickImageFromGallery() async {
    return picker.pickImage(source: ImageSource.gallery);
  }

  Future<XFile?> pickImageFromCamera() async {
    return picker.pickImage(source: ImageSource.camera);
  }
}
