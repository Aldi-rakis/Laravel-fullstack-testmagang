<?php

namespace App\Http\Controllers\Api;

//import model Post
use App\Models\Post;

use Illuminate\Http\Request;

//import resource PostResource
use App\Http\Controllers\Controller;

//import Http request
use App\Http\Resources\PostResource;

//import facade Validator
use Illuminate\Support\Facades\Validator;

//import facade Storage
use Illuminate\Support\Facades\Storage;

class PostController extends Controller
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        //get semua data posts
        $posts = Post::latest()->paginate(5);  //Membaca data Posts terbaru setiap 5 data perhalaman karena Pagination

        //return collection of posts as a resource
        return new PostResource(true, 'List Data Posts', $posts);
    }

    /**
     * store
     *
     * @param  mixed $request
     * @return void
     */
    public function store(Request $request)
    {
        //define validation rules
        $validator = Validator::make($request->all(), [
            'image'     => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'title'     => 'required',
            'content'   => 'required',
        ]);

        //check if validation fails / cek validasi jika error
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //upload image
        $image = $request->file('image');
        $image->storeAs('public/posts', $image->hashName());

        //create post
        $post = Post::create([
            'image'     => $image->hashName(), //melakukan kode has nama dari setiap image yang di upload
            'title'     => $request->title,
            'content'   => $request->content,
        ]);

        //return response
        return new PostResource(true, 'Data Post Berhasil Ditambahkan!', $post);
    }

    /**
     * show
     *
     * @param  mixed $id
     * @return void
     */
    public function show($id)
    {
        //find post by ID
        $post = Post::find($id);

        //return single post as a resource
        return new PostResource(true, 'Detail Data Post!', $post);
    }

    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $id
     * @return void
     */
    public function update(Request $request, $id)
    {
        // Define validation rules
        $validator = Validator::make($request->all(), [
            'title'   => 'sometimes|required',
            'content' => 'sometimes|required',
            'image'   => 'sometimes|image', // Validasi jika ada file gambar
        ]);

        // Check if validation fails
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        // Find post by ID
        $post = Post::find($id);

        // Check if post exists
        if (!$post) {
            return response()->json(['error' => 'Post not found'], 404);
        }

        // Update title and content if they are present in the request
        if ($request->has('title')) {
            $post->title = $request->title;
        }

        if ($request->has('content')) {
            $post->content = $request->content;
        }

        // Check if image is present and handle it
        if ($request->hasFile('image')) {
            // Upload new image
            $image = $request->file('image');
            $imagePath = $image->storeAs('public/posts', $image->hashName());

            // Delete old image if it exists
            if ($post->image) {
                Storage::delete('public/posts/' . basename($post->image));
            }

            // Update post with new image
            $post->image = $image->hashName();
        }

        // Save updated post
        $post->save();

        // Return response
        return new PostResource(true, 'Data Post Berhasil Diubah!', $post);
    }


    /**
     * destroy
     *
     * @param  mixed $id
     * @return void
     */
    public function destroy($id)
    {

        //find post by ID
        $post = Post::find($id);

        //delete image
        Storage::delete('public/posts/' . basename($post->image));

        //delete post
        $post->delete();

        //return response
        return new PostResource(true, 'Data Post Berhasil Dihapus!', null);
    }
}
