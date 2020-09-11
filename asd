let URL;
            const urlMale = 'https://teachablemachine.withgoogle.com/models/d2ZQoKX34/';
            const urlFemale = 'https://teachablemachine.withgoogle.com/models/JyIpdnoVH/';

            let model, labelContainer, maxPredictions;

            // Load the image model and setup the webcam
            async function init() {
                if (document.getElementByClassName('.file-upload-input-m').clicked) {
                    URL = urlMale;
                } else {
                    URL = urlFemale;
                }
                const modelURL = URL + 'model.json';
                const metadataURL = URL + 'metadata.json';

                // load the model and metadata
                // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
                // or files from your local hard drive
                // Note: the pose library adds "tmImage" object to your window (window.tmImage)
                model = await tmImage.load(modelURL, metadataURL);
                maxPredictions = model.getTotalClasses();
                labelContainer = document.getElementById('label-container');
                for (let i = 0; i < maxPredictions; i++) {
                    var element = document.createElement('div');
                    element.classList.add('d-flex');
                    labelContainer.appendChild(document.createElement('div'));
                }
            }

            // run the webcam image through the image model
            async function predict() {
                // predict can take in an image, video or canvas html element
                var image = document.getElementById('face-image');
                const prediction = await model.predict(image, false);
                prediction.sort((a, b) => parseFloat(b.probability) - parseFloat(a.probability));
                console.log(prediction[0].className);
                var resultMessege;
                var resultImage;
                var resultDescription;
                var resultCeleb;
                /* random puppy*/
                var randomPuppy = [
                    'img/puppy/iu.jpg',
                    'img/puppy/boa2.jpg',
                    'img/puppy/hanjimin.jpg',
                    'img/puppy/chaesubin.jpg',
                ];
                function getImgPuppy() {
                    var img = '<img src="';
                    var randomIndex = Math.floor(Math.random() * randomPuppy.length);
                    img += randomPuppy[randomIndex];
                    img += '" alt="Some alt text" style="width:100%;"/>';
                    return img;
                }
                //random fox//
                var randomFox = [
                    'img/fox/kyoungri.jpg',
                    'img/fox/kyoungri2.jpg',
                    'img/fox/kimlove.jpg',
                    'img/fox/kimlove2.jpg',
                ];
                function getImgFox() {
                    var img = '<img src="';
                    var randomIndex = Math.floor(Math.random() * randomFox.length);
                    img += randomFox[randomIndex];
                    img += '" alt="Some alt text" style="width:100%;"/>';
                    return img;
                }
                //random deer//
                var randomDeer = [
                    'img/deer/yoona.jpg',
                    'img/deer/goara2.jpg',
                    'img/deer/tzuy.jpg',
                    'img/deer/leeyounhee.jpg',
                ];
                function getImgDeer() {
                    var img = '<img src="';
                    var randomIndex = Math.floor(Math.random() * randomDeer.length);
                    img += randomDeer[randomIndex];
                    img += '" alt="Some alt text" style="width:100%;"/>';
                    return img;
                }
                //random dfox//
                var randomDfox = [
                    'img/desertfox/jisu.jpg',
                    'img/desertfox/jisu2.jpg',
                    'img/desertfox/jenny.jpg',
                    'img/desertfox/sana.jpg',
                ];
                function getImgDfox() {
                    var img = '<img src="';
                    var randomIndex = Math.floor(Math.random() * randomDfox.length);
                    img += randomDfox[randomIndex];
                    img += '" alt="Some alt text" style="width:100%;"/>';
                    return img;
                }
                //random cat//
                var randomCat = [
                    'img/cat/sohee.jpg',
                    'img/cat/hanyeseul.jpg',
                    'img/cat/chayeryun.jpg',
                    'img/cat/yooinyoung.jpg',
                ];
                function getImgCat() {
                    var img = '<img src="';
                    var randomIndex = Math.floor(Math.random() * randomCat.length);
                    img += randomCat[randomIndex];
                    img += '" alt="Some alt text" style="width:100%;"/>';
                    return img;
                }
                //random rabbit//
                var randomRabbit = [
                    'img/rabbit/suzy.png',
                    'img/rabbit/nayeon.jpeg',
                    'img/rabbit/irine.jpg',
                    'img/rabbit/rosi.jpg',
                ];
                function getImgRabbit() {
                    var img = '<img src="';
                    var randomIndex = Math.floor(Math.random() * randomRabbit.length);
                    img += randomRabbit[randomIndex];
                    img += '" alt="Some alt text" style="width:100%;"/>';
                    return img;
                }

                /* male */
                var randomDino = [
                    'img/dino/gongyu.jpg',
                    'img/dino/kimsungo.jpg',
                    'img/dino/kimubin.jpg',
                    'img/dino/parkseojun.jpg',
                ];
                function getImgDino() {
                    var img = '<img src="';
                    var randomIndex = Math.floor(Math.random() * randomDino.length);
                    img += randomDino[randomIndex];
                    img += '" alt="Some alt text" style="width:100%;"/>';
                    return img;
                }
                var randomMCat = [
                    'img/mcat/kangdongwon.jpg',
                    'img/mcat/key.jpeg',
                    'img/mcat/kimheechul.jpg',
                    'img/mcat/kimsuhyun.jpg',
                ];
                function getImgMCat() {
                    var img = '<img src="';
                    var randomIndex = Math.floor(Math.random() * randomMCat.length);
                    img += randomMCat[randomIndex];
                    img += '" alt="Some alt text" style="width:100%;"/>';
                    return img;
                }
                var randomMFox = [
                    'img/mfox/jico.jpg',
                    'img/mfox/leejunki.jpg',
                    'img/mfox/parksihu.jpg',
                    'img/mfox/seoinguk.jpg',
                ];
                function getImgMFox() {
                    var img = '<img src="';
                    var randomIndex = Math.floor(Math.random() * randomMFox.length);
                    img += randomMFox[randomIndex];
                    img += '" alt="Some alt text" style="width:100%;"/>';
                    return img;
                }
                var randomHorse = [
                    'img/horse/chaseungwon.jpeg',
                    'img/horse/choisiwon.jpg',
                    'img/horse/kimdongwan.jpg',
                    'img/horse/kimsungsoo.jpg',
                ];
                function getImgHorse() {
                    var img = '<img src="';
                    var randomIndex = Math.floor(Math.random() * randomHorse.length);
                    img += randomHorse[randomIndex];
                    img += '" alt="Some alt text" style="width:100%;"/>';
                    return img;
                }
                var randomMonkey = [
                    'img/monkey/gdragon.jpg',
                    'img/monkey/jihyunwoo.jpg',
                    'img/monkey/tonyahn.jpg',
                    'img/monkey/uain.jpg',
                ];
                function getImgMonkey() {
                    var img = '<img src="';
                    var randomIndex = Math.floor(Math.random() * randomMonkey.length);
                    img += randomMonkey[randomIndex];
                    img += '" alt="Some alt text" style="width:100%;"/>';
                    return img;
                }

                var ranPuppy = getImgPuppy();
                var ranFox = getImgFox();
                var ranDeer = getImgDeer();
                var ranDfox = getImgDfox();
                var ranCat = getImgCat();
                var ranRabbit = getImgRabbit();

                var ranDino = getImgDino();
                var ranMFox = getImgMFox();
                var ranMonkey = getImgMonkey();
                var ranHorse = getImgHorse();
                var ranMCat = getImgMCat();
                if (document.getElementById('gender').checked) {
                    switch (prediction[0].className) {
                        case 'dino':
                            resultMessege = '공룡상';
                            resultImage = ranDino;
                            resultDescription =
                                '남성미 물씬 풍기는 외모의, 큼직큼직한 이목구비를 소유한 당신, 남자다우시네요!';
                            resultCeleb = '공룡상 연예인 : 공류, 김성오, 김우빈, 박서준, etc..';
                            /*귀엽고 사랑스러운 매력의 강아지상*/
                            break;
                        case 'fox':
                            resultMessege = '여우상';
                            resultImage = ranMFox;
                            resultDescription =
                                '치명적일 정도로 매력적인 눈매의 소유자! 섹시한 남자란 바로 이런 남자!';
                            resultCeleb = '여우상 연예인 : 지코, 이준기, 박시후, 서인국, etc..';
                            break;
                        case 'horse':
                            resultMessege = '말상';
                            resultImage = ranHorse;
                            resultDescription =
                                '시원시원한 남자다운 인상의 소유자! 남자의 매력이 물씬 풍기네요!';
                            resultCeleb =
                                '말상 연예인 : 차승원, 최시원, 김성수, 신화 김동완, etc..';
                            /*보호 본능을 자극하는 사슴상*/
                            break;
                        case 'monkey':
                            resultMessege = '원숭이상';
                            resultImage = ranMonkey;
                            resultDescription =
                                '개구장이 같으면서도, 듬직하고 멋있는 매력을 가지셨네요!';
                            resultCeleb =
                                '원숭이상 연예인 : 지드래곤, 지현우, 토니안, 유아인, etc..';
                            /*발랄하고 생기 넘치는 토끼상*/
                            break;
                        case 'cat':
                            resultMessege = '고양이상';
                            resultImage = ranMCat;
                            resultDescription = '도도한 매력을 지닌, 사랑할수 밖에 없는 당신!';
                            resultCeleb =
                                '고양이상 연예인 : 강동원, 샤이니 키, 김희철, 김수현, etc..';
                            /*우아하고 도회적인 이미지의 고양이상*/
                            break;
                        default:
                            resultMessege = '알수없음';
                    }
                } else {
                    switch (prediction[0].className) {
                        case 'puppy':
                            resultMessege = '강아지상';
                            resultImage = ranPuppy;
                            resultDescription =
                                '동그란 눈에 사랑스러운 매력을 가진 당신, 누가 봐도 너무나도 사랑스러운 분이시네요!';
                            resultCeleb =
                                '강아지상 연예인 : 박보영, 아이유, 조보아, 채수빈, 한지민, etc..';
                            /*귀엽고 사랑스러운 매력의 강아지상*/
                            break;
                        case 'fox':
                            resultMessege = '여우상';
                            resultImage = ranFox;
                            resultDescription =
                                '치명적인 눈빛의 소유자! 상대가 그 누구든 전부 홀릴수 있는 치명적인 당신!';
                            resultCeleb = '여우상 연예인 : 경리, 김사랑, etc..';
                            break;
                        case 'deer':
                            resultMessege = '사슴상';
                            resultImage = ranDeer;
                            resultDescription =
                                '가녀린 사슴을 닮은 당신, 청순한 매력으로 모두를 홀리시겠네요!';
                            resultCeleb = '사슴상 연예인 : 윤아, 고아라, 이연희, 쯔위, etc..';
                            /*보호 본능을 자극하는 사슴상*/
                            break;
                        case 'desert fox':
                            resultMessege = '사막여우상';
                            resultImage = ranDfox;
                            resultDescription =
                                '귀여우면서도 한편으론 치명적인 매력을 가진 분이시네요!';
                            resultCeleb = '사막여우상 연예인 : 지수, 제니, etc..';
                            break;
                        case 'rabbit':
                            resultMessege = '토끼상';
                            resultImage = ranRabbit;
                            resultDescription = '누가 봐도 귀엽고 사랑스러우시네요!';
                            resultCeleb = '토끼상 연예인 : 수지, 나연, 로시, 아이린, etc..';
                            /*발랄하고 생기 넘치는 토끼상*/
                            break;
                        case 'cat':
                            resultMessege = '고양이상';
                            resultImage = ranCat;
                            resultDescription = '도도한 매력을 지닌, 사랑할수 밖에 없는 당신!';
                            resultCeleb = '고양이상 연예인 : 안소희, 한예슬, 유인영, 차예련, etc..';
                            /*우아하고 도회적인 이미지의 고양이상*/
                            break;
                        default:
                            resultMessege = '알수없음';
                    }
                }
                $('.result-messege').html(resultMessege);
                $('.result-image').html(resultImage);
                $('.result-descr').html(resultDescription);
                $('.result-celeb').html(resultCeleb);
            }
        </script>