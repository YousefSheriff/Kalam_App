import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/models/create_post/create_post_model.dart';
import 'package:social_app/shared/social_cubit/cubit.dart';
import 'package:social_app/shared/social_cubit/states.dart';
import 'package:social_app/shared/styles/iconBroken.dart';
import 'package:social_app/translations/locale_keys.g.dart';

class AnotherUserProfileScreen extends StatelessWidget {
  const AnotherUserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit,SocialAppStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        var anotherUserData = SocialCubit.get(context).anotherUserData;
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ConditionalBuilder(
                  condition:SocialCubit.get(context).anotherUserData != null ,
                  builder: (context)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children:
                        [
                          SizedBox(
                            height: 270.0,
                            child: Stack(
                              alignment: AlignmentDirectional.bottomCenter,
                              children:
                              [
                                Align(
                                  alignment: AlignmentDirectional.topCenter,
                                  child: Container(
                                    width: double.infinity,
                                    height: 220.0,
                                    decoration:  BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topLeft:Radius.circular(5.0),
                                        topRight:Radius.circular(5.0),
                                      ),
                                      image: DecorationImage(
                                        // image: AssetImage('assets/images/pic2.jpg',),
                                        image: NetworkImage('${anotherUserData?.cover}'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 65.0,
                                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                  child: CircleAvatar(

                                    radius: 60.0,
                                    // backgroundImage: AssetImage('assets/images/pic1.jpg',), //NetworkImage('assets/images/pic1.jpg')
                                    backgroundImage: NetworkImage(
                                        '${anotherUserData?.image}'
                                    ),
                                  ),

                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              '${anotherUserData?.name}',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 23.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Text(
                            '${anotherUserData?.bio}',
                            style: const TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Row(
                              children:
                              [
                                Expanded(
                                  child: InkWell(
                                    child: Column(
                                      children:
                                      [
                                        Text(
                                          '324',
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 8.0,),
                                        const Text(
                                          'Friends',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,

                                          ),
                                        ),

                                      ],
                                    ),
                                    onTap: (){},
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    child: Column(
                                      children:
                                      [
                                        Text(
                                          '44',
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 8.0,),
                                        const Text(
                                          'Posts',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,

                                          ),
                                        ),

                                      ],
                                    ),
                                    onTap: (){},
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    child: Column(
                                      children:
                                      [
                                        Text(
                                          '12k',
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,

                                          ),
                                        ),
                                        const SizedBox(height: 8.0,),
                                        const Text(
                                          'Followers',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,

                                          ),
                                        ),

                                      ],
                                    ),
                                    onTap: (){},
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    child: Column(
                                      children:
                                      [
                                        Text(
                                          '23',
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 8.0,),
                                        const Text(
                                          'Followings',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,

                                          ),
                                        ),

                                      ],
                                    ),
                                    onTap: (){},
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Row(
                          //   children:
                          //   [
                          //     Expanded(
                          //       child: OutlinedButton(
                          //         style: ButtonStyle(
                          //           side: MaterialStateProperty.all(
                          //             const BorderSide(
                          //               color: Colors.grey,
                          //             ),
                          //           ),
                          //         ),
                          //         onPressed: (){},
                          //         child: const Text(
                          //           'Add Photo',
                          //           style: TextStyle(fontSize: 18.0,),
                          //         ),
                          //       ),
                          //     ),
                          //     const SizedBox(width: 15.0,),
                          //     OutlinedButton(
                          //       onPressed: ()
                          //       {
                          //         navigateTo(context, EditProfileScreen());
                          //       },
                          //       style: ButtonStyle(
                          //         side: MaterialStateProperty.all(
                          //           const BorderSide(
                          //             color: Colors.grey,
                          //           ),
                          //         ),
                          //       ),
                          //       child:const Icon(IconBroken.Edit_Square,),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    );
                  },
                  fallback: (context)
                  {
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0,),
                  child: Container(
                    width: double.infinity,
                    height: 5,
                    color: Colors.grey,
                  ),
                ),
                ConditionalBuilder(
                  condition: SocialCubit.get(context).anotherUserPosts.isNotEmpty,
                  builder: (BuildContext context)
                  {
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index)
                      {
                        return buildAnotherUserPostItem(SocialCubit.get(context).anotherUserPosts[index], context, index);
                      },
                      separatorBuilder: (context,index)
                      {
                        return const SizedBox(
                          height: 10.0,
                        );
                      },
                      itemCount: SocialCubit.get(context).anotherUserPosts.length,
                    );
                  },
                  fallback: (BuildContext context) {
                    return Column(
                      children:  [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:250.0),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Text(
                                  LocaleKeys.myEmptyPosts.tr(),
                                  style:const TextStyle(color: Colors.red,fontSize: 24.0,fontWeight: FontWeight.bold),
                                ),
                                const Icon(Icons.face_outlined,size: 35.0,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }




  Widget buildAnotherUserPostItem( PostModel model, context, index)
  {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Theme.of(context).textTheme.bodyText2!.color,
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 23.0,
                  backgroundImage: NetworkImage(
                    '${model.image}',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '${model.name}',
                            style:
                            Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 17.5,
                              fontWeight: FontWeight.bold,
                              height: 1.4,
                            ),
                          ),
                          const SizedBox(
                            width: 7.0,
                          ),
                          const Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                            size: 13.0,
                          ),
                        ],
                      ),
                      Text(
                        '${model.dateTime}',
                        style: const TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 25.0,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0,),
            Text(
              '${model.postText}',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 17.0,
                fontWeight: FontWeight.w500,
                height: 1.3,
              ),
            ),
            if (model.postImage != '')
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 15.0,),
                child: Container(
                  width: double.infinity,
                  height: 220.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        '${model.postImage}',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          children: [
                            const Icon(
                              IconBroken.Heart,
                              color: Colors.red,
                              size: 18.0,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '${model.likesNumbers}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: ()
                      {
                        // print(SocialCubit.get(context).postsIds);
                        // print(SocialCubit.get(context).numberOfLikesPerPost);
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              IconBroken.Chat,
                              color: Colors.red,
                              size: 18.0,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '${model.commentsNumbers}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              LocaleKeys.comments.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              width: double.infinity,
              height: 1.0,
              color: Colors.grey,
            ),
            const SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }

}
