import 'package:publiko_app/domain/model/comment.dart';
import 'package:publiko_app/domain/model/post.dart';

final List<Post> dummyPosts = [
  Post(
    id: 1,
    nickname: '송해',
    title: '우리의 목소리를 높여요',
    content: '''안녕하세요, 여러분!
오늘은 우리 커뮤니티의 중요한 주제, 바로 '정보 접근성'에 대해 이야기해보려 합니다.\n
우리는 일상에서 많은 정보를 필요로 합니다. 하지만 정보의 바다는 때로는 우리에게 너무나도 험난한 항해길처럼 느껴지곤 합니다.\n
웹사이트나 애플리케이션이 모두에게 접근 가능하도록 설계된다면, 우리의 삶은 얼마나 더 편리해질까요?\n
예를 들어, 시각장애인을 위한 음성 안내 기능, 청각장애인을 위한 자막 서비스, 그리고 다양한 장애 유형에 맞춘 맞춤형 인터페이스 등이 있습니다.\n
이러한 작은 변화들이 모여, 우리의 일상을 더 풍요롭게 만들 수 있습니다.\n
이제는 우리의 목소리를 높여야 할 때입니다. 정보 접근성 개선을 위한 다양한 아이디어와 경험을 공유해 주세요.\n
함께 모여 더 나은 세상을 만들어 나갑시다!\n
여러분의 소중한 의견을 기다리고 있습니다. 함께 힘을 모아 우리의 삶을 더 나은 방향으로 변화시켜 봅시다!''',
    createdAt: DateTime.now().subtract(Duration(hours: 2)),
    viewCount: 310,
    commentCount: 3,
    comments: [
      Comment(
        id: 1,
        nickname: '햇살나리',
        content:
            '정말 공감합니다! 특히 시각장애인으로서 웹사이트 이용이 힘들 때가 많아요. 음성 안내 기능이 더 많아지면 좋겠어요',
        createdAt: DateTime.now().subtract(Duration(hours: 5)),
      ),
      Comment(
        id: 2,
        nickname: '맑은하늘',
        content: '맞아요, 정보 접근성은 정말 중요한 문제입니다. 다양한 장애 유형에 맞춘 서비스가 더 많이 생겼으면 좋겠어요',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Comment(
        id: 3,
        nickname: '소풍가자',
        content:
            '글 잘 읽었습니다. 정보 접근성에 대한 인식이 더 널리 퍼졌으면 좋겠네요. 작은 변화가 큰 변화를 가져올 수 있다고 믿어요!',
        createdAt: DateTime.now().subtract(Duration(hours: 1)),
      ),
    ],
    imageUrls: [
      'assets/images/information1.png',
      'assets/images/information2.png',
      'assets/images/information3.png',
    ],
  ),
  Post(
    id: 2,
    nickname: '행복한나무',
    title: '여름에 다들 어디로 더위를 피하러 가나요?',
    content:
        '여름철 더위를 피할 수 있는 시원한 장소를 찾고 있어요. 최근에 무더운 날씨가 계속되고 있는데, 집에서 에어컨을 틀어놓고 있어도 바깥에서의 더위는 너무 힘들어요.\n여러분이 추천하는 시원한 장소가 있다면 정말 감사하겠습니다! 물가에서의 산책이나 냉방이 잘 되는 카페, 또는 휴식을 취할 수 있는 공원 같은 곳이 좋습니다. \n더위를 날릴 수 있는 팁이나 장소도 함께 공유해 주세요.',
    createdAt: DateTime.now().subtract(Duration(days: 5)),
    viewCount: 200,
    commentCount: 2,
    comments: [
      Comment(
        id: 4,
        nickname: '시원한바람',
        content: '서울숲이 시원하고 좋았어요. 평일 오전에는 한적해서 더 좋더라구요.',
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
      ),
      Comment(
        id: 5,
        nickname: '해피웨이',
        content: '청량리역 근처의 커피숍은 에어컨이 강하게 나와서 시원해요!',
        createdAt: DateTime.now().subtract(Duration(hours: 3)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 3,
    nickname: '우리는하나',
    title: '장애인 이동권에 대한 의견',
    content:
        '''장애인의 이동권을 보장하기 위한 정책이나 제도에 대해 여러분의 의견을 듣고 싶습니다. 현재의 제도가 얼마나 효과적이라고 생각하시나요?\n\n
최근에 발표된 새로운 정책이 장애인들의 이동을 더 용이하게 할 것이라는 기대가 있지만, 실제로는 많은 장애인들이 여전히 이동에 어려움을 겪고 있습니다.\n
다양한 의견과 경험을 공유하여, 보다 나은 이동권 보장을 위한 논의를 해보았으면 좋겠습니다.\n\n
제도 개선을 위해 어떤 추가적인 조치가 필요할까요?''',
    createdAt: DateTime.now().subtract(Duration(days: 3)),
    viewCount: 500,
    commentCount: 4,
    comments: [
      Comment(
        id: 6,
        nickname: '정의로운검사',
        content:
            '정말 좋은 주제의 글이에요. 현재 제도는 아직 많이 부족한 것 같아요. 접근성 개선을 위한 구체적인 정책이 필요합니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 6)),
      ),
      Comment(
        id: 7,
        nickname: '모두의마블',
        content:
            '저도 장애인 이동권 보장을 위한 정책이 더 강화되었으면 좋겠어요. 제도 개선을 위한 구체적인 제안이 필요합니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
      ),
      Comment(
        id: 8,
        nickname: '미레닝',
        content:
            '장애인 이동권 보장을 위한 정책이 논의되고 있다는 것만으로도 큰 진전이라고 생각해요. 앞으로도 꾸준한 관심이 필요합니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Comment(
        id: 9,
        nickname: '사슴꽃망울',
        content: '이동권 관련 정책이 많이 부족하다고 느껴요. 다양한 의견을 모아서 정책 개선을 위해 노력해야 할 때입니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 1)),
      ),
    ],
    imageUrls: [
      'assets/images/movable1.png',
      'assets/images/movable2.png',
    ],
  ),
  Post(
    id: 4,
    nickname: '책읽는고양이',
    title: '다들 책 추천 하나씩 하고 가요!',
    content:
        '최근에 읽었던 책 중에 추천할 만한 것이 있으면 알려주세요. 읽어보고 싶어요! \n\n특히 장애인들이 겪는 다양한 경험과 도전, 그리고 이를 극복하는 이야기가 담긴 책을 찾고 있습니다. \n장애인 문학이나 장애를 주제로 한 논픽션도 좋습니다. 책에 대한 간단한 리뷰나 소개를 포함해서 공유해주시면 감사하겠습니다.',
    createdAt: DateTime.now().subtract(Duration(days: 4)),
    viewCount: 150,
    commentCount: 1,
    comments: [
      Comment(
        id: 10,
        nickname: '지식수집가',
        content: '『장애인과 함께하는 사회』라는 책이 정말 좋았어요. 장애인들의 삶을 잘 이해할 수 있었습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 3)),
      ),
    ],
    imageUrls: [
      'assets/images/book1.png',
      'assets/images/book2.png',
    ],
  ),
  Post(
    id: 5,
    nickname: '우럭메기',
    title: '주말 나들이 추천 장소',
    content:
        '주말에 나들이 가고 싶은데 좋은 장소가 있을까요? 휠체어 접근성이 좋은 곳이면 더욱 좋습니다! 친구들과 주말에 어디를 갈까 고민하고 있는데 공원, 박물관, 혹은 특별한 체험이 가능한 곳 등 다양한 장소 추천을 부탁드립니다. 주말을 알차게 보내기 위해 여러분의 경험담을 공유해 주세요.',
    createdAt: DateTime.now(),
    viewCount: 180,
    commentCount: 2,
    comments: [
      Comment(
        id: 11,
        nickname: '여행매니아',
        content: '서울시립미술관이 접근성이 좋고, 다양한 전시가 있어서 추천해요!',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Comment(
        id: 12,
        nickname: '호랭이킴',
        content: '경복궁은 장애인 접근성이 좋고, 역사적인 장소라서 방문하기 좋아요.',
        createdAt: DateTime.now().subtract(Duration(hours: 1)),
      ),
    ],
    imageUrls: [
      'assets/images/picnic1.png',
    ],
  ),
  Post(
    id: 6,
    nickname: '호랑나비',
    title: '장애인용 앱 추천',
    content:
        '사용해본 경험이 있으면 좋고, 어떤 기능이 좋았는지도 함께 알려주세요. \n생활 편의를 위한 앱, 정보 제공 앱, 혹은 일상적인 문제 해결을 도와주는 앱 등 다양한 추천을 기다립니다. \n앱의 실제 사용 경험이나 유용한 기능을 상세히 설명해 주시면 많은 도움이 될 것 같아요.',
    createdAt: DateTime.now().subtract(Duration(days: 6)),
    viewCount: 220,
    commentCount: 3,
    comments: [
      Comment(
        id: 13,
        nickname: '까칠한천사',
        content: '『Smart Access』 앱이 매우 유용해요. 장애인 이동을 지원하는 다양한 기능이 있어요.',
        createdAt: DateTime.now().subtract(Duration(hours: 5)),
      ),
      Comment(
        id: 14,
        nickname: '메로나마시썽',
        content: '『Disability Helper』 앱은 정보 제공과 상담 기능이 좋습니다. 추천해요!',
        createdAt: DateTime.now().subtract(Duration(hours: 3)),
      ),
      Comment(
        id: 15,
        nickname: '도로롱쿨쿨',
        content: '『Access Guide』는 장애인들을 위한 자세한 가이드를 제공해줘서 유용합니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 1)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 7,
    nickname: '웃는햇살',
    title: '사회에서 알게 모르게 차별 당했던 적이 있나요?',
    content:
        '장애를 가진 제 입장에서 일상 속에서 차별을 경험할 때가 많습니다. 대중교통에서 휠체어 자리가 자주 비어 있는 경우나, 장애인 화장실이 부족한 경우 등이 대표적이죠. \n하지만 가장 움츠러들 때는 무심코 던지는 말이나 태도에서 차별이 느껴질 때 인 것 같아요.  \n여러분은 사회에서 알게 모르게 차별을 경험한 적이 있나요? 함께 나누며 더 나은 사회를 만들어 가요.',
    createdAt: DateTime.now().subtract(Duration(days: 3, hours: 3)),
    viewCount: 300,
    commentCount: 2,
    comments: [
      Comment(
        id: 16,
        nickname: '영화광',
        content: '『The Intouchables』는 정말 감동적이었어요. 장애인과 비장애인 간의 우정이 잘 그려졌습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
      ),
      Comment(
        id: 17,
        nickname: '인생영화',
        content: '『A Beautiful Mind』는 정신적 도전에 대한 훌륭한 영화입니다. 강력 추천합니다!',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 8,
    nickname: '아롱사태',
    title: '장애인 직업훈련 후기',
    content:
        '''최근에 장애인 직업훈련 프로그램에 참여해 보았습니다. 이 프로그램은 저에게 정말 많은 도움이 되었어요. 특히 직무 교육뿐만 아니라, 직장 내에서의 장애인 지원 정책에 대해서도 많은 정보를 얻을 수 있었습니다. 
    
  전문가의 상담과 실제 직무 체험이 정말 유익했습니다.

하지만 몇 가지 아쉬운 점도 있었어요. 예를 들어, 장애인을 위한 전문적인 장비나 지원이 부족한 경우가 있었습니다. 또한, 프로그램의 일정이 너무 타이트해서 개별적인 관심이 부족했던 것 같아요.

다들 어떤 직업훈련 프로그램을 경험해 보셨나요? 경험담을 공유해 주시면 앞으로의 프로그램 개선에 많은 도움이 될 것 같습니다. 함께 더 나은 직업훈련을 만들어 가요!

감사합니다.''',
    createdAt: DateTime.now().subtract(Duration(days: 8)),
    viewCount: 289,
    commentCount: 5,
    comments: [
      Comment(
        id: 18,
        nickname: '족구왕',
        content:
            '저는 최근에 참여한 체험 프로그램이 정말 좋았어요. 다양한 경험을 통해 많은 것을 배울 수 있었습니다. 특히, 직무 관련 기술을 배우는 것이 제 경력에 큰 도움이 되었어요.\n그런데 몇 가지 부족한 점도 있었던 것 같습니다. 예를 들어, 개인별 맞춤형 교육이 부족하고, 지원 장비가 다소 낡아서 불편했습니다. 이러한 점들이 개선되면 더 좋은 프로그램이 될 것 같아요.',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Comment(
        id: 19,
        nickname: '민트초코',
        content:
            '저도 최근에 직업훈련 프로그램에 참여했는데, 유용한 부분도 많았지만 개선이 필요하다고 느꼈어요. 특히, 멘토와의 1:1 상담 시간이 더 많았으면 좋겠다는 생각이 들었습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 5)),
      ),
      Comment(
        id: 20,
        nickname: '해피스마일',
        content:
            '저는 장애인 직업훈련 프로그램이 정말 유익했어요. 특히 직무 관련 스킬을 배우는 것이 좋았고, 실제 직무 경험이 많은 도움이 되었습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
      ),
      Comment(
        id: 21,
        nickname: '별빛소리',
        content: '좋은 정보 감사합니다!',
        createdAt: DateTime.now().subtract(Duration(hours: 3)),
      ),
      Comment(
        id: 22,
        nickname: '그린티',
        content: '후기 잘봤습니다',
        createdAt: DateTime.now().subtract(Duration(hours: 6)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 9,
    nickname: '친구구함',
    title: '장애인 직업훈련 정보',
    content:
        '장애인을 위한 직업훈련 프로그램이나 취업 지원 정보가 필요합니다. 아는 정보가 있다면 공유해 주세요. \n\n특히 직업훈련과 관련된 프로그램, 취업 지원 서비스, 또는 성공적인 사례를 소개해 주시면 많은 도움이 될 것같아요. 장애인들이 직업을 얻기 위한 다양한 기회와 자원을 찾는 데 있어 유용한 정보를 나누어 주세요.',
    createdAt: DateTime.now().subtract(Duration(days: 9)),
    viewCount: 250,
    commentCount: 3,
    comments: [
      Comment(
        id: 19,
        nickname: '알바트로스',
        content: '『AbleWorks』라는 프로그램이 좋습니다. 장애인 직업훈련과 취업 지원을 잘 해줘요.',
        createdAt: DateTime.now().subtract(Duration(hours: 6)),
      ),
      Comment(
        id: 20,
        nickname: '뱁새',
        content: '『JobPath』는 취업 지원 서비스가 좋습니다. 다양한 직업 훈련 프로그램을 제공해요.',
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
      ),
      Comment(
        id: 21,
        nickname: '시라소니',
        content: '『Career Plus』는 장애인들이 성공적인 취업을 위해 많은 도움을 줍니다. 추천합니다!',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 10,
    nickname: '동갈방어',
    title: '장애인 권리 관련 뉴스',
    content:
        '최근 장애인 권리에 관한 뉴스나 이슈가 있으면 알려주세요. 특히 정책 변화나 사회적 논의가 있다면 이야기 나눠보고 싶어요.',
    createdAt: DateTime.now().subtract(Duration(days: 10)),
    viewCount: 400,
    commentCount: 5,
    comments: [
      Comment(
        id: 22,
        nickname: '눈콩',
        content: '최근에 새로운 장애인 권리 법안이 통과되었어요. 자세한 내용을 알고 싶다면 뉴스를 체크해보세요.',
        createdAt: DateTime.now().subtract(Duration(hours: 8)),
      ),
      Comment(
        id: 23,
        nickname: '밤린',
        content: '이번 정책 변화가 실제로 장애인들에게 어떤 영향을 미칠지 궁금하네요. 계속 지켜봐야 할 것 같습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 6)),
      ),
      Comment(
        id: 24,
        nickname: '시라소니',
        content: '장애인 권리와 관련된 새로운 논의가 계속되고 있어서 좋습니다. 앞으로도 많은 논의가 필요할 것 같습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
      ),
      Comment(
        id: 25,
        nickname: '코지뮤직',
        content: '정확한 정보와 업데이트를 받기 위해 관련 뉴스를 자주 확인하는 것이 중요하네요.',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Comment(
        id: 26,
        nickname: '멜랑말랑',
        content: '장애인 권리에 대한 논의는 계속되어야 합니다. 많은 사람들이 관심을 가지는 것이 필요합니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 1)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 11,
    nickname: '다노박',
    title: '장애인 문화행사 정보',
    content: '장애인을 위한 문화행사 참여해보신 분 있나요? 후기가 궁금합니다. 가보고 싶긴 한데 막상 참여해보려니 겁이나네요',
    createdAt: DateTime.now().subtract(Duration(days: 11)),
    viewCount: 280,
    commentCount: 2,
    comments: [
      Comment(
        id: 27,
        nickname: '만찬가',
        content: '서울에서 진행하는 장애인 문화행사들이 많이 늘어나고 있어요. 참여해보시면 좋을 것 같습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 5)),
      ),
      Comment(
        id: 28,
        nickname: '호로요이',
        content: '이번 가을에 열리는 문화페스티벌에 한 번 참여해보시는건 어떠세요? 화이팅입니다',
        createdAt: DateTime.now().subtract(Duration(hours: 3)),
      ),
    ],
    imageUrls: [],
  ),
];
