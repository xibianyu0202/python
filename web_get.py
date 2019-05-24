import wget
import os
import re


#如果出现字符错误需要加入encoding=None，例如网易使用的是简体中文编写的，不是utf8就需要加入这个参数
def get_url(fname,patt):
# def get_url(fname,patt,encoding=None):
    result=[]
    cpatt = re.compile(patt)

    #加入encoding=encoding参数
    # with open(fname,encoding=encoding) as fobj:
    with open(fname) as fobj:
        for line in fobj:
            m = cpatt.search(line)
            if m:
                result.append(m.group())
    return result





if __name__ == '__main__':
    url_qq = 'http://sports.sina.com.cn/'
    fname_qq = '/mnt/sina.html'
    dst_dir = '/tmp/sina1'
    if not os.path.exists(fname_qq):
        wget.download(url_qq,fname_qq)
    if not os.path.exists(dst_dir):
        os.mkdir(dst_dir)

    img_patt = '(http|https)://[-\w./]+\.(jpg|jpeg|png|gif)'
    # 注意网易网站的字符编码用的是“简体中文”，而不是utf8，所以编码要用gbk
    # img_urls = get_url(fname_qq,img_patt,'gbk')
    img_urls = get_url(fname_qq, img_patt)

    # print(img_urls)
    for url in img_urls:
        try:
            wget.download(url,dst_dir)
        except:
            pass