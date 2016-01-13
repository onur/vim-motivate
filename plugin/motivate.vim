" vim-motivate - your ultimate motivator for vim
"
" Every time you start editing a file, this plugin will show
" you a movitational quote.
"
" If you are motivated enough, you can `:let g:i_am_motivated = 1` and
" vim-motivate will no longer try to motivate you.


if exists("loaded_vim_motivate")
    finish
endif
let loaded_vim_motivate = 1

let s:quotes = [
\ 'Life is 10% what happens to you and 90% how you react to it.',
\ 'Failure will never overtake me if my determination to succeed is strong ' .
\   'enough.',
\ 'In order to succeed, we must first believe that we can.',
\ 'What you do today can improve all your tomorrows.',
\ 'Arriving at one goal is the starting point to another.',
\ 'Don''t watch the clock; do what it does. Keep going.',
\ 'A creative man is motivated by the desire to achieve, not by the desire '.
\   'to beat others.',
\ 'It does not matter how slowly you go as long as you do not stop.',
\ 'If you can dream it, you can do it.',
\ 'Keep your eyes on the stars, and your feet on the ground.',
\ 'You are never too old to set another goal or to dream a new dream.',
\ 'Accept the challenges so that you can feel the exhilaration of victory.',
\ 'Always do your best. What you plant now, you will harvest later.',
\ 'The secret of getting ahead is getting started.',
\ 'With the new day comes new strength and new thoughts.',
\ 'Our greatest weakness lies in giving up. The most certain way to succeed ' .
\   'is always to try just one more time.',
\ 'Knowing is not enough; we must apply. Willing is not enough; we must do.',
\ 'Your talent is God''s gift to you. What you do with it is your gift ' .
\   'back to God.',
\ 'Aim for the moon. If you miss, you may hit a star.',
\ 'You have to learn the rules of the game. And then you have to play ' .
\   'better than anyone else.',
\ 'Problems are not stop signs, they are guidelines.',
\ 'There is only one corner of the universe you can be certain of ' .
\   'improving, and that''s your own self.',
\ 'Start where you are. Use what you have. Do what you can.',
\ 'Believe in yourself! Have faith in your abilities! Without a humble ' .
\   'but reasonable confidence in your own powers you cannot be ' .
\   'successful or happy.',
\ 'Good, better, best. Never let it rest. ''Til your good is better ' .
\   'and your better is best.',
\ 'Optimism is the faith that leads to achievement. Nothing can be done ' .
\   'without hope and confidence.',
\ 'What you get by achieving your goals is not as important as what ' .
\   'you become by achieving your goals.',
\ 'Do the difficult things while they are easy and do the great things ' .
\   'while they are small. A journey of a thousand miles must begin with ' .
\   'a single step.',
\ 'Things do not happen. Things are made to happen.',
\ 'We may encounter many defeats but we must not be defeated.',
\ 'I''d rather attempt to do something great and fail than to attempt ' .
\   'to do nothing and succeed.',
\ 'Never complain and never explain.',
\ 'They can conquer who believe they can.',
\ 'Ever tried. Ever failed. No matter. Try Again. Fail again. Fail better.',
\ 'By failing to prepare, you are preparing to fail.',
\ 'Do you want to know who you are? Don''t ask. Act! Action will ' .
\   'delineate and define you.',
\ 'Setting goals is the first step in turning the invisible into the visible.',
\ 'Perseverance is failing 19 times and succeeding the 20th.',
\ 'There is no passion to be found playing small - in settling for a life ' .
\   'that is less than the one you are capable of living.',
\ 'Do something wonderful, people may imitate it.',
\ 'Be kind whenever possible. It is always possible.',
\ 'Never give up, for that is just the place and time that the tide will ' .
\   'turn.',
\ 'Without hard work, nothing grows but weeds.',
\ 'Expect problems and eat them for breakfast.',
\ 'The key is to keep company only with people who uplift you, whose ' .
\   'presence calls forth your best.',
\ 'If you''re going through hell, keep going.',
\ 'Quality is not an act, it is a habit.',
\ 'You simply have to put one foot in front of the other and keep going. ' .
\   'Put blinders on and plow right ahead.',
\ 'If you don''t design your own life plan, chances are you''ll fall into ' .
\   'someone else''s plan.',
\ 'No bird soars too high if he soars with his own wings.',
\ 'Even if you fall on your face, you''re still moving forward.',
\ 'True happiness involves the full use of one''s power and talents.',
\ 'Don''t fight the problem, decide it.',
\ 'Either you run the day or the day runs you.',
\ 'Be miserable. Or motivate yourself. Whatever has to be done, it''s ' .
\   'always your choice.',
\ 'Change your life today. Don''t gamble on the future, act now, without ' .
\   'delay.',
\ 'I don''t believe you have to be better than everybody else. I believe ' .
\   'you have to be better than you ever thought you could be.',
\ 'There''s a way to do it better - find it.',
\ 'If you want to succeed you should strike out on new paths, rather ' .
\   'than travel the worn paths of accepted success.',
\ 'Poverty was the greatest motivating factor in my life.',
\ 'Either I will find a way, or I will make one.',
\ 'Do the one thing you think you cannot do. Fail at it. Try again. ' .
\   'Do better the second time.',
\ 'The only people who never tumble are ' .
\   'those who never mount the high wire. This is your moment. Own it.',
\ 'I attribute my success to this - I never gave or took any excuse.',
\ 'A goal is a dream with a deadline.',
\ 'If you don''t like how things are, change it! You''re not a tree.',
\ 'Learning is the beginning of wealth. Learning is the beginning of ' .
\   'health. Learning is the beginning of spirituality.',
\ 'Searching and ' .
\   'learning is where the miracle process all begins.',
\ 'Do not wait; the time will never be ''just right.'' Start where you ' .
\   'stand, and work with whatever tools you may have at your command, ' .
\   'and better tools will be found as you go along.',
\ 'Perseverance is not a long race; it is many short races one after ' .
\   'the other.',
\ 'Well done is better than well said.',
\ 'Go for it now. The future is promised to no one.',
\ 'One finds limits by pushing them.',
\ 'Don''t give up. Don''t lose hope. Don''t sell out.',
\ 'Motivation is the art of getting people to do what you want ' .
\   'them to do because they want to do it.',
\ 'There is always room at the top.',
\ 'Pursue one great decisive aim with force and determination.',
\ 'Do not wait to strike till the iron is hot; but make it hot ' .
\   'by striking.',
\ 'If you fell down yesterday, stand up today.',
\ 'I know where I''m going and I know the truth, and I don''t have ' .
\   'to be what you want me to be. I''m free to be what I want.',
\ 'The harder the conflict, the more glorious the triumph.',
\ 'When you reach the end of your rope, tie a knot in it and hang on.',
\ 'Act as if what you do makes a difference. It does.',
\ 'Be gentle to all and stern with yourself.',
\ 'Learn from the past, set vivid, detailed goals for the future, ' .
\   'and live in the only moment of time over which you have any ' .
\   'control: now.',
\ 'Never, never, never give up.',
\ 'You can''t build a reputation on what you are going to do.',
\ 'Motivation will almost always beat mere talent.',
\ 'If you think you can do it, you can.',
\ 'When you fail you learn from the mistakes you made and it motivates ' .
\   'you to work even harder.',
\ 'The more we do, the more we can do.',
\ 'The most effective way to do it, is to do it.',
\ 'You must take action now that will move you towards your goals. ' .
\   'Develop a sense of urgency in your life.',
\ 'Do whatever you do intensely.',
\ 'Step by step and the thing is done.',
\ 'Follow your dreams, work hard, practice and persevere.',
\ 'Make sure you eat a variety of foods, get plenty of exercise ' .
\   'and maintain a healthy lifestyle.',
\ 'Every exit is an entry somewhere else.',
\ 'You need to overcome the tug of people against you as ' .
\   'you reach for high goals.',
\ 'The more things you do, the more you can do.',
\ 'Set yourself earnestly to see what you are made to do, ' .
\   'and then set yourself earnestly to do it.',
\ 'We aim above the mark to hit the mark.',
\ 'Set your goals high, and don''t stop till you get there.',
\ 'If you want to conquer fear, don''t sit home and think about it. ' .
\   'Go out and get busy.',
\ 'Small deeds done are better than great deeds planned.',
\ 'Determine never to be idle. No person will have occasion to ' .
\   'complain of the want of time who never loses any. It is ' .
\   'wonderful how much may be done if we are always doing.',
\ 'I''ve found that luck is quite predictable. If you want more luck, ' .
\   'take more chances. Be more active. Show up more often.',
\ 'Decide what you want, decide what you are willing to exchange for it. ' .
\   'Establish your priorities and go to work.',
\ 'Do your work with your whole heart, and you will succeed - there''s ' .
\   'so little competition.',
\ 'I really believe that everyone has a talent, ability, or skill that ' .
\   'he can mine to support himself and to succeed in life.',
\ 'Always continue the climb. It is possible for you to do whatever you ' .
\   'choose, if you first get to know who you are and are willing to work ' .
\   'with a power that is greater than ourselves to do it.',
\ 'To be a good loser is to learn how to win.',
\ 'A will finds a way.',
\ 'If you don''t ask, you don''t get.',
\ 'When something is important enough, you do it even if the odds ' .
\   'are not in your favor.',
\ 'After a storm comes a calm.',
\ 'Go big or go home. Because it''s true. What do you have to lose?',
\ 'To know oneself, one should assert oneself.',
\ 'If you''ve got a talent, protect it.',
\ 'Leap, and the net will appear.',
\ 'The more man meditates upon good thoughts, the better will be ' .
\   'his world and the world at large.',
\ 'Don''t brood. Get on with living and loving. You don''t have forever.',
\ 'The people who influence you are the people who believe in you.',
\ 'I am not afraid... I was born to do this.',
\ 'There is progress whether ye are going forward or backward! The ' .
\   'thing is to move!',
\ 'Never retreat. Never explain. Get it done and let them howl.',
\ 'If you ask me what I came into this life to do, I will tell you: ' .
\   'I came to live out loud.',
\ 'The first step toward success is taken when you refuse to be ' .
\   'a captive of the environment in which you first find yourself.',
\ 'A somebody was once a nobody who wanted to and did.',
\ 'Only I can change my life. No one can do it for me.',
\ 'The ultimate aim of the ego is not to see something, but to be something.',
\ 'How do you know you''re going to do something, untill you do it?',
\ 'What is called genius is the abundance of life and health.',
\ 'To be wholly devoted to some intellectual exercise is to have ' .
\   'succeeded in life.',
\ 'The dog that trots about finds a bone.',
\ 'When one must, one can.',
\ 'We make the world we live in and shape our own environment.',
\ 'Always desire to learn something useful.',
\ 'The hardships that I encountered in the past will help me ' .
\   'succeed in the future.',
\ 'From my tribe I take nothing, I am the maker of my own fortune.',
\ 'Begin to be now what you will be hereafter.',
\ 'You can''t wait for inspiration. You have to go after it with a club.',
\ 'The past cannot be changed. The future is yet in your power.',
\ 'Hitch your wagon to a star.',
\ 'Your heaviest artillery will be your will to live. ' .
\   'Keep that big gun going.',
\ 'We are taught you must blame your father, your sisters, ' .
\ 'It''s never your fault. ' .
\   'But it''s always your fault, because if you wanted to ' .
\   'change you''re the one who has got to change.',
\ 'No matter how many goals you have achieved, you must set ' .
\   'your sights on a higher one.',
\ 'I''ve always tried to go a step past wherever people ' .
\   'expected me to end up.',
\ 'The weeds keep multiplying in our garden, which is our ' .
\   'mind ruled by fear. Rip them out and call them by name.',
\ 'You create your opportunities by asking for them.',
\ 'Who seeks shall find.',
\ 'It''s always too early to quit.',
\ 'You can never quit. Winners never quit, and quitters never win.',
\ 'You can''t expect to hit the jackpot if you don''t put ' .
\   'a few nickels in the machine.',
\ 'It is very important to know who you are. To make decisions. ' .
\   'To show who you are.',
\ 'March on. Do not tarry. To go forward is to move toward ' .
\   'perfection.',
\ 'March on, and fear not the thorns, or the ' .
\   'sharp stones on life''s path.',
\ 'Crave for a thing, you will get it. Renounce the craving, ' .
\   'the object will follow you by itself.',
\ 'One way to keep momentum going is to have constantly greater ' .
\   'goals.',
\ 'Know or listen to those who know.',
\ 'Opportunity does not knock, it presents itself when you beat ' .
\   'down the door.',
\ 'Big shots are only little shots who keep shooting.',
\ 'Get action. Seize the moment. Man was never intended to become ' .
\   'an oyster.',
\ 'Where there is a will, there is a way.',
\ 'If there is a chance in ' .
\   'a million that you can do something, anything, to keep what ' .
\   'you want from ending, do it. Pry the door open or, if need be, ' .
\   'wedge your foot in that door and keep it open.',
\ 'Press forward. Do not stop, do not linger in your journey, but ' .
\   'strive for the mark set before you.',
\ 'To begin, begin.',
\ 'I was motivated to be different in part because I was different.',
\ 'Wherever you are - be all there.',
\ 'God always strives together with those who strive.',
\ 'Deserve your dream.',
\ 'Be thine own palace, or the world''s thy jail.',
\ 'Either move or be moved.',
\ 'You have to make it happen.',
\ 'The will to succeed is important, but what''s more important is ' .
\   'the will to prepare.',
\ 'Never give in and never give up.',
\ 'I am not a has-been. I am a will be.',
\ 'You just can''t beat the person who never gives up.',
\ 'Whatever you want in life, other people are going to want it too. ' .
\   'Believe in yourself enough to accept the idea that you have ' .
\   'an equal right to it.',
\ 'There is nothing deep down inside us except what we have put ' .
\   'there ourselves.',
\ 'Follow your inner moonlight; don''t hide the madness.',
\ 'Set your sights high, the higher the better.',
\ 'Expect the most ' .
\   'wonderful things to happen, not in the future but right now. ',
\ 'Realize that nothing is too good. Allow absolutely nothing to ' .
\   'hamper you or hold you up in any way.',
\ 'He conquers who endures.',
\ 'I know not age, nor weariness nor defeat.',
\ 'Only the educated are free.',
\ 'I come to win.',
\ 'The wise does at once what the fool does at last.',
\ 'I can, therefore I am.',
\ 'Do not weep; do not wax indignant. Understand.',
\ 'Many are called but few get up.',
\ 'You never know what motivates you.',
\ 'One may miss the mark by aiming too high as too low.',
\ 'Earl Nightingale has inspired more people toward success and ' .
\   'fortune than any other motivational speaker on the planet.',
\ 'Success is the only motivational factor that a boy with character ' .
\   'needs.',
\ 'I''m a motivational speaker.'
\ ]


" Vim doesn't have a native random number generator
" Random number generator is taken from:
" https://stackoverflow.com/questions/12737977/native-vim-random-number-script
function! s:randQuote()
    let rand = str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
    return s:quotes[rand % len(s:quotes)]
endfunction


function! s:showRandomQuote()
    " FIXME: width is current buffer width, not screen width
    let width = winwidth(0)

    if width < 60 || exists('g:i_am_motivated')
        return
    endif

    let quote = s:randQuote()
    while len(quote) > width
        let quote = s:randQuote()
    endwhile

    redraw
    echo quote
endfunction


augroup motivate
    autocmd! BufNewFile * call s:showRandomQuote()
    autocmd! BufRead * call s:showRandomQuote()
augroup END
