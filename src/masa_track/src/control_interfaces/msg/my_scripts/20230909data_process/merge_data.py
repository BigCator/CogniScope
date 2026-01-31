import os
import shutil
from tqdm import tqdm


def main():
    root_path = '/media/qolo/2TB/projects/ZW/datasets/20230909_jszx_copy/labeled_data'
    target_image_dir = '/media/qolo/2TB/projects/ZW/datasets/20230909_jszx_voc/images'
    target_annotation_dir = '/media/qolo/2TB/projects/ZW/datasets/20230909_jszx_voc/annotations'
    
    if not os.path.exists(target_annotation_dir):
        os.makedirs(target_annotation_dir)
    if not os.path.exists(target_image_dir):
        os.makedirs(target_image_dir)

    img_paths = []
    for root, dirs, files in os.walk(root_path):
        dirs.sort()
        for file in sorted(files):
            if file.endswith(".json"):
                file_full_path = os.path.join(root, file)
                if os.path.dirname(file_full_path).endswith("camera") or os.path.dirname(file_full_path).endswith("front"):
                    img_path = file_full_path.replace('.json', '.png')
                elif os.path.dirname(file_full_path).endswith("label_raw"):
                    img_path = file_full_path.replace('label_raw', 'camera').replace('.json', '.png')
                    if not os.path.exists(img_path):
                        img_path = file_full_path.replace('label_raw', 'front').replace('.json', '.png')
                if not os.path.exists(img_path):
                    raise KeyError("wrong img path")
                img_paths.append(img_path)

    label_voc_paths = []
    for img in img_paths:
        label_voc = os.path.join(os.path.join(os.path.dirname(os.path.dirname(img)), 'label_voc'), os.path.basename(img).replace('.png', '.xml'))
        label_voc_paths.append(label_voc)
        if not os.path.exists(label_voc):
            raise KeyError("wrong voc label path")

    assert len(img_paths) == len(label_voc_paths)
    for i in tqdm(range(len(img_paths)), 'copying'):
        assert os.path.splitext(os.path.basename(img_paths[i]))[0] == os.path.splitext(os.path.basename(label_voc_paths[i]))[0]
        name = str(i).zfill(6)
        shutil.copyfile(img_paths[i], os.path.join(target_image_dir, '{}.png'.format(name)))
        shutil.copyfile(label_voc_paths[i], os.path.join(target_annotation_dir, '{}.xml'.format(name)))

    print('Done! Copy pngs to {}'.format(target_image_dir))
    print('Done! Copy xmls to {}'.format(target_annotation_dir))


if __name__ == '__main__':
    main()