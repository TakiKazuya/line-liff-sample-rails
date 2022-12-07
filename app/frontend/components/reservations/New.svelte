<script>
    import liff from "@line/liff";

    async function init() {
        return await liff.init({
            liffId: import.meta.env.VITE_LIFF_ID
        });
    }

    // async function getIDToken() {
    //     return liff.getIDToken();
    // }

    let promise = init();
</script>

<main>
    <div class="bg-blue-400 px-3 py-2 font-medium rounded-lg mt-3">
        {#await promise}
            <p>ユーザー情報取得中</p>
        {:then _}
            <p>ユーザー情報を取得しました</p>
        {:catch e}
            <p>ユーザー情報の取得に失敗しました</p>
            <p><code>{`${e}`}</code></p>
        {/await}
    </div>
</main>

<style>
</style>
