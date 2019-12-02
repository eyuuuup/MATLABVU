function[ocrResults] = giveNumberCam()
    vid = videoinput ('winvideo' , 1);
    start(vid);
    preview(vid);
    %im = imread('test1.jpg');
    im = getsnapshot(vid);
    stop(vid);
    delete(vid);
    imshow(im);
    imwrite(im,'test.bmp','bmp');
    ocrResults = ocr(im);
end